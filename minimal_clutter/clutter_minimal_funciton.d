
module clutter_minimal_funciton;

extern (C){

    enum ClutterInitError {
        CLUTTER_INIT_SUCCESS = 1,
        CLUTTER_INIT_ERROR_UNKNOWN =  0,
        CLUTTER_INIT_ERROR_THREADS = -1,
        CLUTTER_INIT_ERROR_BACKEND = -2,
        CLUTTER_INIT_ERROR_INTERNAL = -3
    }

    //ClutterInitError clutter_init( int * argc, char *** argv );

    typedef ClutterInitError function( int * argc, char *** argv ) PFclutter_init;
    PFclutter_init d_clutter_init;

}


