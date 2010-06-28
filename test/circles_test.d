
module dclutter.test.circles_test;

import std.stdio;
import std.string;
import std.conv;
//import std.math;

import dclutter.clutter;


immutable(int) N_CIRCLES = 3;
immutable(int) CIRCLE_W = 128;
immutable(int) CIRCLE_WX = 128;// TODO  CLUTTER_INT_TO_FIXED(CIRCLE_W)
immutable(int) CIRCLE_G = 32;
immutable(int) CIRCLE_S = 3;
immutable(int) SCREEN_W = 640;
immutable(int) SCREEN_H = 480;


/*
void PaintCircle (ClutterActor *actor)
{
    const ClutterColor fill_color = { 0xff, 0xff, 0xff, 0x80 };
    gint i;
    gdouble angle;
    ClutterFixed radius =
        CLUTTER_UNITS_TO_FIXED (clutter_actor_get_widthu (actor))/2;

    cogl_color (&fill_color);

    angle = *((gdouble *)g_object_get_data (G_OBJECT (actor), "angle"));
    for (i = 0; i < CIRCLE_S; i++, angle += (2.0*M_PI)/(gdouble)CIRCLE_S)
    {
        gdouble angle2 = angle + ((2.0*M_PI)/(gdouble)CIRCLE_S)/2.0;
        cogl_path_move_to (clutter_qmulx (radius - CIRCLE_WX,
                    CLUTTER_FLOAT_TO_FIXED (cos (angle))) + radius,
                clutter_qmulx (radius - CIRCLE_WX,
                    CLUTTER_FLOAT_TO_FIXED (sin (angle))) + radius);
        cogl_path_arc (radius, radius, radius, radius,
                CLUTTER_ANGLE_FROM_RAD (angle),
                CLUTTER_ANGLE_FROM_RAD (angle2));
        cogl_path_line_to (clutter_qmulx (radius - CIRCLE_WX,
                    CLUTTER_FLOAT_TO_FIXED (cos (angle2))) + radius,
                clutter_qmulx (radius - CIRCLE_WX,
                    CLUTTER_FLOAT_TO_FIXED (sin (angle2))) + radius);
        cogl_path_arc (radius, radius, radius - CIRCLE_WX, radius - CIRCLE_WX,
                CLUTTER_ANGLE_FROM_RAD (angle2),
                CLUTTER_ANGLE_FROM_RAD (angle));
        cogl_path_close ();
        cogl_path_fill ();
    }
}
*/

/*
static this()
{
    clutter_load();
}
*/


void main( string[] args )
{
    char** argv = (new char*[args.length]).ptr;
    int argc = 0;
    foreach (string p; args) {
        argv[argc++] = cast( char* )p;
    }
    clutter_init( &argc, &argv );

    ClutterActor *stage;
    stage = clutter_stage_get_default();
    clutter_actor_set_size( stage, SCREEN_W, SCREEN_H );
    ClutterColor bg_color = { 0xe0, 0xf2, 0xfc, 0xff };
    clutter_stage_set_color( CLUTTER_STAGE( stage ), &bg_color );

    ClutterTimeline *timeline;
    timeline = clutter_timeline_new( 5000 );
    clutter_timeline_set_loop( timeline, true );

    for (uint i = 0; i < N_CIRCLES; i++)
    {
        gint size;
        gdouble *angle;
        ClutterAlpha *alpha;
        ClutterBehaviour *behaviour;

        ClutterActor *actor;
        ClutterColor transp = { 0x00, 0x00, 0x00, 50 };
        actor = clutter_rectangle_new_with_color( &transp );

        size = (i+1) * (CIRCLE_W + CIRCLE_G) * 2;
        /+
        clutter_actor_set_size (actor, size, size);
        clutter_actor_set_position (actor, SCREEN_W - size/2,
                SCREEN_H - size/2);

        clutter_container_add_actor (CLUTTER_CONTAINER (null), actor);

        angle = g_slice_new (gdouble);
        *angle = g_random_double_range (0.0, 90.0);
        g_object_set_data (G_OBJECT (actor), "angle", angle);
        g_signal_connect (actor, "paint", G_CALLBACK (circle_paint_cb), NULL);

        alpha = clutter_alpha_new_full (timeline, (i % 2) ?
                CLUTTER_ALPHA_RAMP_INC :
                CLUTTER_ALPHA_RAMP_DEC,
                NULL, NULL);
        behaviour = clutter_behaviour_rotate_new (alpha, CLUTTER_Z_AXIS,
                CLUTTER_ROTATE_CW,
                0.0, 360.0);
        clutter_behaviour_rotate_set_center (CLUTTER_BEHAVIOUR_ROTATE (behaviour),
                size/2, size/2, 0);
        clutter_behaviour_apply (behaviour, actor);
        +/
    }

    clutter_actor_show_all( stage );

    clutter_timeline_start( timeline );

    clutter_main();

    return 0;
}

