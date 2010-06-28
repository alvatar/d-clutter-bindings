/*
 * Copyright: Copyright (C) 2007 Tomasz Stachowiak (original author)
 * Copyright: Copyright (C) 2009 Álvaro Castro-Castilla
 * License:   BSD style: $(LICENSE)
 */

module dclutter.library_loader;

private
{
    import std.string;
}

/**
 * This class represents a loaded library.  The actual instances
 * will likely by of a subclassed type specific to the current
 * platform.
 */
class SharedLib
{
private:
    immutable(char)[] name;

    this(immutable(char)[] name)
    {
        this.name = name;
    }

public:
    immutable (char)[] toString()
    {
        return "SharedLib("~name~")";
    }
}

class CairoLoaderException : Exception
{
    this(immutable(char)[] msg)
    {
        super(msg);
    }
}

class SharedLibLoadException : CairoLoaderException
{
    this(immutable(char)[] libName)
    {
	super("Failed to load shared library \""
                ~ libName ~ "\".");
    }
}

class ProcNotFoundException : CairoLoaderException
{
    this(SharedLib lib, immutable(char)[] procName)
    {
        super( "Could not find procedure \""
                ~ procName ~ "\" in shared library \""
                ~ lib.name ~ "\"." );
    }
}

/**
 * Attempts to load the given library.
 */
SharedLib loadSharedLib(immutable(char)[] libName)
in
{
    assert(libName !is null);
}
out(result)
{
    assert(result !is null);
}
body
{
    return loadSharedLibPlatform(libName);
}

/**
 * Unloads the given shared library.  It is safe to call this
 * method on a library that has already been unloaded.
 */
void unloadSharedLib(SharedLib lib)
in
{
    assert(lib !is null);
}
body
{
    if( lib !is null )
        unloadSharedLibPlatform(lib);
}

/**
 * Attempts to load the given procedure from the shared
 * library.
 */
void* getProc(SharedLib lib, immutable(char)[] procName)
in
{
    assert(lib !is null);
    assert(lib !is null);
}
out(result)
{
    assert(result != null);
}
body
{
    return getProcPlatform(lib, procName);
}

/**
 * Windows-specific implementation.
 */
version(Windows)
{
    private import std.c.windows.windows;

    class WinSharedLib : SharedLib
    {
    private:
        HMODULE handle;

        this(HMODULE handle, char[] name)
        {
            super(name);
            this.handle = handle;
        }
    }

    SharedLib loadSharedLibPlatform(char[] libName)
    in
    {
        assert(libName !is null);
        assert(libName.length > 0);
    }
    out(result)
    {
        assert(result !is null);
        assert(cast(WinSharedLib)result !is null);
        assert((cast(WinSharedLib)result).handle != null);
    }
    body
    {
        HMODULE hlib = LoadLibraryA(toStringz(libName));
        if( hlib is null )
            throw new SharedLibLoadException(libName);

        return new WinSharedLib(hlib, libName);
    }

    void unloadSharedLibPlatform(SharedLib lib)
    in
    {
        assert(cast(WinSharedLib)lib !is null);
    }
    out
    {
        assert((cast(WinSharedLib)lib).handle is null);
    }
    body
    {
        WinSharedLib winlib = cast(WinSharedLib)lib;
        if( winlib.handle != null )
        {
            FreeLibrary(winlib.handle);
            winlib.handle = cast(HMODULE)null;
        }
    }

    void* getProcPlatform(SharedLib lib, char[] procName)
    in
    {
        assert(lib !is null);
        assert(cast(WinSharedLib)lib !is null);
        assert(procName !is null);
        assert(procName.length > 0);
    }
    out(result)
    {
        assert(result != null);
    }
    body
    {
        auto winlib = cast(WinSharedLib)lib;
        void* proc = GetProcAddress(winlib.handle, toStringz(procName));
        if( proc == null )
            throw new ProcNotFoundException(lib, procName);

        return proc;
    }
}
/**
 * Linux-specific implementation.
 */
else version(linux)
{
    version(build)
    {
        pragma(link, dl);
    }
    else
    {
        pragma(lib, "dl.a");
    }
    
    private import std.c.linux.linux;

    private typedef void* HLIB;
    
    class LinuxSharedLib : SharedLib
    {
    private:
        HLIB handle;

        this(HLIB handle, immutable(char)[] libName)
        {
            super(libName);
            this.handle = handle;
        }
    }
    
    SharedLib loadSharedLibPlatform(immutable(char)[] libName)
    in
    {
        assert(libName !is null);
        assert(libName.length > 0);
    }
    out(result)
    {
        assert(result !is null);
        assert(cast(LinuxSharedLib)result !is null);
        assert((cast(LinuxSharedLib)result).handle != null);
    }
    body
    {
        HLIB handle = cast(HLIB)dlopen(toStringz(libName), RTLD_NOW);
        if( handle == null )
            throw new SharedLibLoadException(libName);

        return new LinuxSharedLib(handle, libName);
    }

    void unloadSharedLibPlatform(SharedLib lib)
    in
    {
        assert(lib !is null);
        assert(cast(LinuxSharedLib)lib !is null);
    }
    out
    {
        assert((cast(LinuxSharedLib)lib).handle == null);
    }
    body
    {
        auto plib = cast(LinuxSharedLib)lib;
        if( plib.handle != null )
        {
            dlclose(cast(void*)plib.handle);
            plib.handle = null;
        }
    }

    void* getProcPlatform(SharedLib lib, immutable(char)[] procName)
    in
    {
        assert(lib !is null);
        assert(cast(LinuxSharedLib)lib !is null);
        assert((cast(LinuxSharedLib)lib).handle != null);
        assert(procName !is null);
        assert(procName.length > 0);
    }
    out(result)
    {
        assert(result != null);
    }
    body
    {
        auto plib = cast(LinuxSharedLib)lib;
        void* proc = dlsym(cast(void*)plib.handle, toStringz(procName));
        if( proc == null )
            throw new ProcNotFoundException(lib, procName);

        return proc;
    }
}
else
{
    pragma(msg, "Library loader is not supported in this platform");
    static assert(0);
}

