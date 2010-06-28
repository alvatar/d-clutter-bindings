
/+
 + Bindings for Clutter C library
 +
 + Author: Álvaro Castro-Castilla
 + Version: 1.0.2
 +/

module dclutter.clutter;

public import dclutter.clutter_types;
public import dclutter.clutter_functions;


private import dclutter.library_loader;
package SharedLib libClutter;


import std.conv;


/**
 * This function will attempt to load the clutter library.
 */
public void clutter_load( immutable(char)[] libName )
{
    if( libClutter !is null )
        return;
    
    libClutter = loadSharedLib(libName);

    // Now we can actually load the functions.
    clutter_loadprocs(libClutter);
}

/// ditto
public void clutter_load()
{
    version(Windows)
        clutter_load( "libclutter-1.0.dll" );
    else version(linux)
        clutter_load("libclutter-glx-1.0.so");
    else
    {
        pragma(msg, "I'm sorry, but implicit loading is not supported on"
                    " your platform.  Please call clutter_load with the"
                    " name of the library to load.");
        static assert(0);
    }
}

/**
 * This will unload the clutter library from memory.  This will be
 * called automatically when your program terminates
 */
public void clutter_unload()
{
    if( libClutter is null )
        return;
    
    unloadSharedLib(libClutter);
    libClutter = null;
}

version( Tango )
{
    import tango.text.convert.Integer : toUtf8;
    alias toUtf8 intToString;
}
else
{
    import std.string : toString;
    alias toString intToString;
}

private immutable(char)[] verToString(int ver)
{
    return to!string(ver/100_00)
        ~ "." ~ to!string((ver/100)%100)
        ~ "." ~ to!string(ver%100);
}

private class ClutterVersionException : Exception
{
    this(int got, int expected)
    {
        this("expected clutter version "~verToString(expected)
                ~", got version "~verToString(got)~".");
    }

    this(immutable(char)[] msg)
    {
        super(msg);
    }
}

static ~this()
{
    clutter_unload();
}

