module dclutter.minimal_example;


import std.stdio;
import std.c.linux.linux;
import clutter_minimal_funciton;


int main(string[] args)
{
    typedef void* HLIB;
    HLIB handle = cast(HLIB)dlopen("libclutter-glx-1.0.so", RTLD_NOW);
    if ( handle is null ) writeln("Imaginary exception: I couldn't load the library");
    d_clutter_init = cast(PFclutter_init)dlsym( handle, "clutter_init" );
    if ( d_clutter_init is null ) writeln("Imaginary exception: I couldn't load the function");

    int numargs = 1;
    char* progname = cast(char *)__FILE__;
    char** pprogname = &progname;
    //clutter_init( &numargs, &pprogname );
    d_clutter_init( null, null );

    writeln("Coooooool!");

    return 0;
}
