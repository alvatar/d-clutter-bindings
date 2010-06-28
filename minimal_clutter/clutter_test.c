
#include <clutter/clutter.h>
#include <dlfcn.h>

#include <math.h>


typedef ClutterInitError (*clutter_init_fp) (int *argc,  char ***argv);
clutter_init_fp clutter_init_dyn;

typedef void* HLIB;


int main (int argc, char **argv)
{

    HLIB handle =(HLIB)dlopen("libclutter-glx-1.0.so", RTLD_NOW);
    if ( !handle ) printf("Imaginary exception: I couldn't load the library\n");

    clutter_init_dyn =(clutter_init_fp)dlsym( handle, "clutter_init" );
    if ( !clutter_init ) printf("Imaginary exception: I couldn't load the function\n");


    clutter_init_dyn ( NULL, NULL);

    printf("Not so happy to read this\n");
    return 0;
}

