
/+
 + C function declarations of Clutter library
 +
 + Author: Álvaro Castro-Castilla
 + Version: 1.0.2
 +/

module dclutter.clutter_functions;

private {
    import std.stdio;
    import dclutter.clutter_types;
    import dclutter.library_loader;
    import dclutter.cogl_types;
}


extern (C) {

    void clutter_actor_allocate( ClutterActor *self, ClutterActorBox *box, ClutterAllocationFlags flags );

    void clutter_actor_allocate_available_size( ClutterActor *self, gfloat x, gfloat y, gfloat available_width, gfloat available_height, ClutterAllocationFlags flags );

    void clutter_actor_allocate_preferred_size( ClutterActor *self, ClutterAllocationFlags flags );

    ClutterAnimation* clutter_actor_animate( ClutterActor *actor, gulong mode, guint duration, gchar *first_property_name, ... );

    ClutterAnimation* clutter_actor_animatev( ClutterActor *actor, gulong mode, guint duration, gint n_properties, gchar * properties[], GValue *values );

    ClutterAnimation* clutter_actor_animate_with_alpha( ClutterActor *actor, ClutterAlpha *alpha, gchar *first_property_name, ... );

    ClutterAnimation* clutter_actor_animate_with_alphav( ClutterActor *actor, ClutterAlpha *alpha, gint n_properties, gchar * properties[], GValue *values );

    ClutterAnimation* clutter_actor_animate_with_timeline( ClutterActor *actor, gulong mode, ClutterTimeline *timeline, gchar *first_property_name, ... );

    ClutterAnimation* clutter_actor_animate_with_timelinev( ClutterActor *actor, gulong mode, ClutterTimeline *timeline, gint n_properties, gchar* properties[], GValue *values );

    void clutter_actor_apply_relative_transform_to_point( ClutterActor *self, ClutterActor *ancestor, ClutterVertex *point, ClutterVertex *vertex );

    void clutter_actor_apply_transform_to_point( ClutterActor *self, ClutterVertex *point, ClutterVertex *vertex );

    gboolean clutter_actor_box_contains( ClutterActorBox *box, gfloat x, gfloat y );

    ClutterActorBox* clutter_actor_box_copy( ClutterActorBox *box );

    gboolean clutter_actor_box_equal( ClutterActorBox *box_a, ClutterActorBox *box_b );
    
    void clutter_actor_box_free( ClutterActorBox *box );

    void clutter_actor_box_from_vertices( ClutterActorBox *box, ClutterVertex verts[] );

    gfloat clutter_actor_box_get_area( ClutterActorBox *box );

    gfloat clutter_actor_box_get_height( ClutterActorBox *box );

    void clutter_actor_box_get_origin( ClutterActorBox *box, gfloat *x, gfloat *y );

    void clutter_actor_box_get_size( ClutterActorBox *box, gfloat *width, gfloat *height );

    gfloat clutter_actor_box_get_width( ClutterActorBox *box );

    gfloat clutter_actor_box_get_x( ClutterActorBox *box );

    gfloat clutter_actor_box_get_y( ClutterActorBox *box );

    ClutterActorBox* clutter_actor_box_new( gfloat x_1, gfloat y_1, gfloat x_2, gfloat y_2 );

    //PangoContext* clutter_actor_create_pango_context( ClutterActor *self );

    //PangoLayout* clutter_actor_create_pango_layout( ClutterActor *self, gchar *text );

    void clutter_actor_destroy( ClutterActor *self );

    gboolean clutter_actor_event( ClutterActor *actor, ClutterEvent *event, gboolean capture );

    void clutter_actor_get_abs_allocation_vertices( ClutterActor *self, ClutterVertex verts[] );

    void clutter_actor_get_allocation_box( ClutterActor *self, ClutterActorBox *box );

    void clutter_actor_get_allocation_geometry( ClutterActor *self, ClutterGeometry *geom );

    void clutter_actor_get_allocation_vertices( ClutterActor *self, ClutterActor *ancestor, ClutterVertex verts[] );

    void clutter_actor_get_anchor_point( ClutterActor *self, gfloat *anchor_x, gfloat *anchor_y );

    ClutterGravity clutter_actor_get_anchor_point_gravity( ClutterActor *self );
    
    ClutterAnimation* clutter_actor_get_animation( ClutterActor *actor );

    void clutter_actor_get_clip( ClutterActor *self, gfloat *xoff, gfloat *yoff, gfloat *width, gfloat *height );

    gfloat clutter_actor_get_depth( ClutterActor *self );

    gboolean clutter_actor_get_fixed_position_set( ClutterActor *self );

    ClutterActorFlags clutter_actor_get_flags( ClutterActor *self );

    void clutter_actor_get_geometry( ClutterActor *self, ClutterGeometry *geometry );

    guint32 clutter_actor_get_gid( ClutterActor *self );

    gfloat clutter_actor_get_height( ClutterActor *self );

    gchar* clutter_actor_get_name( ClutterActor *self );

    guint8 clutter_actor_get_opacity( ClutterActor *self );

    guint8 clutter_actor_get_paint_opacity( ClutterActor *self );

    gboolean clutter_actor_get_paint_visibility( ClutterActor *self );

    //PangoContext* clutter_actor_get_pango_context( ClutterActor *self );

    ClutterActor* clutter_actor_get_parent( ClutterActor *self );

    void clutter_actor_get_position( ClutterActor *self, gfloat *x, gfloat *y );
    
    void clutter_actor_get_preferred_height( ClutterActor *self, gfloat for_width, gfloat *min_height_p, gfloat *natural_height_p );

    void clutter_actor_get_preferred_size( ClutterActor *self, gfloat *min_width_p, gfloat *min_height_p, gfloat *natural_width_p, gfloat *natural_height_p);

    void clutter_actor_get_preferred_width( ClutterActor *self, gfloat for_height, gfloat *min_width_p, gfloat *natural_width_p );

    gboolean clutter_actor_get_reactive( ClutterActor *actor );

    gdouble clutter_actor_get_rotation( ClutterActor *self, ClutterRotateAxis axis, gfloat *x, gfloat *y, gfloat *z );

    void clutter_actor_get_scale( ClutterActor *self, gdouble *scale_x, gdouble *scale_y );

    void clutter_actor_get_scale_center( ClutterActor *self, gfloat *center_x, gfloat *center_y );

    ClutterGravity clutter_actor_get_scale_gravity( ClutterActor *self );

    ClutterShader* clutter_actor_get_shader( ClutterActor *self );

    void clutter_actor_get_size( ClutterActor *self, gfloat *width, gfloat *height );

    ClutterActor* clutter_actor_get_stage( ClutterActor *actor );

    void clutter_actor_get_transformation_matrix( ClutterActor *self, CoglMatrix *matrix );

    void clutter_actor_get_transformed_position( ClutterActor *self, gfloat *x, gfloat *y );

    void clutter_actor_get_transformed_size  (ClutterActor *self, gfloat *width, gfloat *height );

    gfloat clutter_actor_get_width( ClutterActor *self );

    float clutter_actor_get_x( ClutterActor *self );

    gfloat clutter_actor_get_y( ClutterActor *self );

    ClutterGravity clutter_actor_get_z_rotation_gravity( ClutterActor *self );

    void clutter_actor_grab_key_focus( ClutterActor *self );

    gboolean clutter_actor_has_clip( ClutterActor *self );

    void clutter_actor_hide( ClutterActor *self );

    void clutter_actor_hide_all( ClutterActor *self );

    gboolean clutter_actor_is_in_clone_paint( ClutterActor *self );

    gboolean clutter_actor_is_rotated( ClutterActor *self );

    gboolean clutter_actor_is_scaled( ClutterActor *self );

    void clutter_actor_lower( ClutterActor *self, ClutterActor *above );

    void clutter_actor_lower_bottom( ClutterActor *self );

    void clutter_actor_map( ClutterActor *self );

    void clutter_actor_move_anchor_point( ClutterActor *self, gfloat anchor_x, gfloat anchor_y );

    void clutter_actor_move_anchor_point_from_gravity( ClutterActor *self, ClutterGravity gravity );

    void clutter_actor_move_by( ClutterActor *self, gfloat dx, gfloat dy);

    void clutter_actor_paint( ClutterActor *self );

    void clutter_actor_queue_redraw( ClutterActor *self );

    void clutter_actor_queue_relayout( ClutterActor *self );

    void clutter_actor_raise( ClutterActor *self, ClutterActor *below );

    void clutter_actor_raise_top( ClutterActor *self );

    void clutter_actor_realize( ClutterActor *self );

    void clutter_actor_remove_clip( ClutterActor *self );

    void clutter_actor_reparent( ClutterActor *self, ClutterActor *new_parent );

    void clutter_actor_set_anchor_point( ClutterActor *self, gfloat anchor_x, gfloat anchor_y );

    void clutter_actor_set_anchor_point_from_gravity( ClutterActor *self, ClutterGravity gravity );

    void clutter_actor_set_clip( ClutterActor *self, gfloat xoff, gfloat yoff, gfloat width, gfloat height );

    void clutter_actor_set_depth( ClutterActor *self, gfloat depth );

    void clutter_actor_set_fixed_position_set( ClutterActor *self, gboolean is_set );

    void clutter_actor_set_flags( ClutterActor *self, ClutterActorFlags flags );

    void clutter_actor_set_geometry( ClutterActor *self, ClutterGeometry *geometry );

    void clutter_actor_set_height( ClutterActor *self, gfloat height );

    void clutter_actor_set_name( ClutterActor *self, gchar *name );

    void clutter_actor_set_opacity( ClutterActor *self, guint8 opacity );

    void clutter_actor_set_parent( ClutterActor *self, ClutterActor *parent );

    void clutter_actor_set_position( ClutterActor *self, gfloat x, gfloat y );

    void clutter_actor_set_reactive( ClutterActor *actor, gboolean reactive );

    void clutter_actor_set_rotation( ClutterActor *self, ClutterRotateAxis axis, gdouble angle, gfloat x, gfloat y, gfloat z );

    void clutter_actor_set_scale( ClutterActor *self, gdouble scale_x, gdouble scale_y );

    void clutter_actor_set_scale_full( ClutterActor *self, gdouble scale_x, gdouble scale_y, gfloat center_x, gfloat center_y );

    void clutter_actor_set_scale_with_gravity( ClutterActor *self, gdouble scale_x, gdouble scale_y, ClutterGravity gravity );

    gboolean clutter_actor_set_shader( ClutterActor *self, ClutterShader *shader );

    void clutter_actor_set_shader_param( ClutterActor *self, gchar *param, GValue *value );

    void clutter_actor_set_shader_param_float( ClutterActor *self, gchar *param, gfloat value );

    void clutter_actor_set_shader_param_int( ClutterActor *self, gchar *param, gint value );

    void clutter_actor_set_size( ClutterActor *self, gfloat width, gfloat height );

    void clutter_actor_set_width( ClutterActor *self, gfloat width );

    void clutter_actor_set_x( ClutterActor *self, gfloat x );

    void clutter_actor_set_y( ClutterActor *self, gfloat y );

    void clutter_actor_set_z_rotation_from_gravity( ClutterActor *self, gdouble angle, ClutterGravity gravity );

    gboolean clutter_actor_should_pick_paint( ClutterActor *self );

    void clutter_actor_show( ClutterActor *self );
    
    void clutter_actor_show_all( ClutterActor *self );

    gboolean clutter_actor_transform_stage_point( ClutterActor *self, gfloat x, gfloat y, gfloat *x_out, gfloat *y_out );

    void clutter_actor_unmap( ClutterActor *self );

    void clutter_actor_unparent (ClutterActor *self);

    void clutter_actor_unrealize( ClutterActor *self );

    void clutter_actor_unset_flags( ClutterActor *self, ClutterActorFlags flags );

    gdouble clutter_alpha_get_alpha( ClutterAlpha *alpha );

    gulong clutter_alpha_get_mode( ClutterAlpha *alpha );

    ClutterTimeline* clutter_alpha_get_timeline( ClutterAlpha *alpha );

    ClutterAlpha* clutter_alpha_new();

    ClutterAlpha* clutter_alpha_new_full( ClutterTimeline *timeline, gulong mode );

    ClutterAlpha* clutter_alpha_new_with_func( ClutterTimeline *timeline, ClutterAlphaFunc func, gpointer data, GDestroyNotify destroy );

    gulong clutter_alpha_register_closure( GClosure *closure );

    gulong clutter_alpha_register_func( ClutterAlphaFunc func, gpointer data );

    void clutter_alpha_set_closure( ClutterAlpha *alpha, GClosure *closure );

    void clutter_alpha_set_func( ClutterAlpha *alpha, ClutterAlphaFunc func, gpointer data, GDestroyNotify destroy );

    void clutter_alpha_set_mode( ClutterAlpha *alpha, gulong mode );

    void clutter_alpha_set_timeline( ClutterAlpha *alpha, ClutterTimeline *timeline );

    gboolean clutter_animatable_animate_property( ClutterAnimatable *animatable, ClutterAnimation *animation, gchar *property_name, GValue *initial_value, GValue *final_value, gdouble progress, GValue *value );

    ClutterAnimation* clutter_animation_bind( ClutterAnimation *animation, gchar *property_name, GValue *ifinal ); // Note: originally GValue *final, had to change to compile

    ClutterAnimation* clutter_animation_bind_interval( ClutterAnimation *animation, gchar *property_name, ClutterInterval *interval );

    void clutter_animation_completed( ClutterAnimation *animation );

    ClutterAlpha* clutter_animation_get_alpha( ClutterAnimation *animation );

    guint clutter_animation_get_duration( ClutterAnimation *animation );

    ClutterInterval* clutter_animation_get_interval( ClutterAnimation *animation, gchar *property_name );

    gboolean clutter_animation_get_loop( ClutterAnimation *animation );

    gulong clutter_animation_get_mode( ClutterAnimation *animation );

    GObject* clutter_animation_get_object( ClutterAnimation *animation );

    ClutterTimeline* clutter_animation_get_timeline( ClutterAnimation *animation );

    gboolean clutter_animation_has_property( ClutterAnimation *animation, gchar *property_name );

    ClutterAnimation* clutter_animation_new();

    void clutter_animation_set_alpha( ClutterAnimation *animation, ClutterAlpha *alpha );
    
    void clutter_animation_set_duration( ClutterAnimation *animation, gint msecs );

    void clutter_animation_set_loop( ClutterAnimation *animation, gboolean loop );

    void clutter_animation_set_mode( ClutterAnimation *animation, gulong mode );

    void clutter_animation_set_object( ClutterAnimation *animation, GObject *object );

    void clutter_animation_set_timeline( ClutterAnimation *animation, ClutterTimeline *timeline );

    void clutter_animation_unbind_property( ClutterAnimation *animation, gchar *property_name );

    void clutter_animation_update_interval( ClutterAnimation *animation, gchar *property_name, ClutterInterval *interval);

    guint clutter_backend_get_double_click_distance( ClutterBackend *backend );

    guint clutter_backend_get_double_click_time( ClutterBackend *backend );

    void clutter_backend_set_font_name( ClutterBackend *backend, gchar *font_name );

    /*
    cairo_font_options_t* clutter_backend_get_font_options( ClutterBackend *backend );
    */

    gdouble clutter_backend_get_resolution( ClutterBackend *backend );

    void clutter_backend_set_double_click_distance( ClutterBackend *backend, guint distance );

    void clutter_backend_set_double_click_time( ClutterBackend *backend, guint msec );

    void clutter_backend_set_font_name( ClutterBackend *backend, gchar *font_name );

    /*
    void clutter_backend_set_font_options( ClutterBackend *backend, cairo_font_options_t *options );
    */

    void clutter_backend_set_resolution( ClutterBackend *backend, gdouble dpi );

    void clutter_behaviour_actors_foreach( ClutterBehaviour *behave, ClutterBehaviourForeachFunc func, gpointer data );

    void clutter_behaviour_apply( ClutterBehaviour *behave, ClutterActor *actor );

    void clutter_behaviour_depth_get_bounds( ClutterBehaviourDepth *behaviour, gint *depth_start, gint *depth_end );

    ClutterBehaviour* clutter_behaviour_depth_new( ClutterAlpha *alpha, gint depth_start, gint depth_end );

    void clutter_behaviour_depth_set_bounds( ClutterBehaviourDepth *behaviour, gint depth_start, gint depth_end );

    gdouble clutter_behaviour_ellipse_get_angle_end( ClutterBehaviourEllipse *self );

    gdouble clutter_behaviour_ellipse_get_angle_start( ClutterBehaviourEllipse *self );

    gdouble clutter_behaviour_ellipse_get_angle_tilt( ClutterBehaviourEllipse *self, ClutterRotateAxis axis );

    void clutter_behaviour_ellipse_get_center( ClutterBehaviourEllipse *self, gint *x, gint *y );

    ClutterRotateDirection clutter_behaviour_ellipse_get_direction( ClutterBehaviourEllipse *self );

    gint clutter_behaviour_ellipse_get_height( ClutterBehaviourEllipse *self );

    void clutter_behaviour_ellipse_get_tilt( ClutterBehaviourEllipse *self, gdouble *angle_tilt_x, gdouble *angle_tilt_y, gdouble *angle_tilt_z );

    gint clutter_behaviour_ellipse_get_width( ClutterBehaviourEllipse *self );

    ClutterBehaviour* clutter_behaviour_ellipse_new( ClutterAlpha *alpha, gint x, gint y, gint width, gint height, ClutterRotateDirection direction, gdouble start, gdouble end );

    void clutter_behaviour_ellipse_set_angle_end( ClutterBehaviourEllipse *self, gdouble angle_end );

    void clutter_behaviour_ellipse_set_angle_start( ClutterBehaviourEllipse *self, gdouble angle_start );

    void clutter_behaviour_ellipse_set_angle_tilt( ClutterBehaviourEllipse *self, ClutterRotateAxis axis, gdouble angle_tilt );

    void clutter_behaviour_ellipse_set_center( ClutterBehaviourEllipse *self, gint x, gint y );

    void clutter_behaviour_ellipse_set_direction( ClutterBehaviourEllipse *self, ClutterRotateDirection direction );

    void clutter_behaviour_ellipse_set_height( ClutterBehaviourEllipse *self, gint height );

    void clutter_behaviour_ellipse_set_tilt( ClutterBehaviourEllipse *self, gdouble angle_tilt_x, gdouble angle_tilt_y, gdouble angle_tilt_z );

    void clutter_behaviour_ellipse_set_width( ClutterBehaviourEllipse *self, gint width );

    GSList* clutter_behaviour_get_actors( ClutterBehaviour *behave );

    ClutterAlpha* clutter_behaviour_get_alpha( ClutterBehaviour *behave );

    ClutterActor* clutter_behaviour_get_nth_actor( ClutterBehaviour *behave, gint index_ );

    gint clutter_behaviour_get_n_actors( ClutterBehaviour *behave );

    gboolean clutter_behaviour_is_applied( ClutterBehaviour *behave, ClutterActor *actor );

    void clutter_behaviour_opacity_get_bounds( ClutterBehaviourOpacity *behaviour, guint8 *opacity_start, guint8 *opacity_end );

    ClutterBehaviour* clutter_behaviour_opacity_new( ClutterAlpha *alpha, guint8 opacity_start, guint8 opacity_end );

    void clutter_behaviour_opacity_set_bounds( ClutterBehaviourOpacity *behaviour, guint8 opacity_start, guint8 opacity_end );

    ClutterPath* clutter_behaviour_path_get_path( ClutterBehaviourPath *pathb );

    ClutterBehaviour* clutter_behaviour_path_new( ClutterAlpha *alpha, ClutterPath *path);

    ClutterBehaviour* clutter_behaviour_path_new_with_description( ClutterAlpha *alpha, gchar *desc );

    ClutterBehaviour* clutter_behaviour_path_new_with_knots( ClutterAlpha *alpha, ClutterKnot *knots, guint n_knots );

    void clutter_behaviour_path_set_path( ClutterBehaviourPath *pathb, ClutterPath *path );

    void clutter_behaviour_remove( ClutterBehaviour *behave, ClutterActor *actor );
    
    void clutter_behaviour_remove_all( ClutterBehaviour *behave );

    ClutterRotateAxis clutter_behaviour_rotate_get_axis( ClutterBehaviourRotate *rotate );

    void clutter_behaviour_rotate_get_bounds( ClutterBehaviourRotate *rotate, gdouble *angle_start, gdouble *angle_end );

    void clutter_behaviour_rotate_get_center( ClutterBehaviourRotate *rotate, gint *x, gint *y, gint *z );

    ClutterRotateDirection clutter_behaviour_rotate_get_direction( ClutterBehaviourRotate *rotate );

    ClutterBehaviour* clutter_behaviour_rotate_new( ClutterAlpha *alpha, ClutterRotateAxis axis, ClutterRotateDirection direction, gdouble angle_start, gdouble angle_end );

    void clutter_behaviour_rotate_set_axis( ClutterBehaviourRotate *rotate, ClutterRotateAxis axis );

    void clutter_behaviour_rotate_set_bounds( ClutterBehaviourRotate *rotate, gdouble angle_start, gdouble angle_end );

    void clutter_behaviour_rotate_set_center( ClutterBehaviourRotate *rotate, gint x, gint y, gint z );

    void clutter_behaviour_rotate_set_direction( ClutterBehaviourRotate *rotate, ClutterRotateDirection direction );

    void clutter_behaviour_scale_get_bounds( ClutterBehaviourScale *scale, gdouble *x_scale_start, gdouble *y_scale_start, gdouble *x_scale_end, gdouble *y_scale_end );

    ClutterBehaviour* clutter_behaviour_scale_new( ClutterAlpha *alpha, gdouble x_scale_start, gdouble y_scale_start, gdouble x_scale_end, gdouble y_scale_end );

    void clutter_behaviour_scale_set_bounds( ClutterBehaviourScale *scale, gdouble x_scale_start, gdouble y_scale_start, gdouble x_scale_end, gdouble y_scale_end );

    void clutter_behaviour_set_alpha( ClutterBehaviour *behave, ClutterAlpha *alpha );

    gboolean clutter_binding_pool_activate( ClutterBindingPool *pool, guint key_val, ClutterModifierType modifiers, GObject *gobject );

    void clutter_binding_pool_block_action( ClutterBindingPool *pool, gchar *action_name );

    ClutterBindingPool* clutter_binding_pool_find( gchar *name );

    gchar* clutter_binding_pool_find_action( ClutterBindingPool *pool, guint key_val, ClutterModifierType modifiers );

    ClutterBindingPool* clutter_binding_pool_get_for_class( gpointer klass );

    void clutter_binding_pool_install_action( ClutterBindingPool *pool, gchar *action_name, guint key_val, ClutterModifierType modifiers, GCallback callback, gpointer data, GDestroyNotify notify);

    void clutter_binding_pool_install_closure( ClutterBindingPool *pool, gchar *action_name, guint key_val, ClutterModifierType modifiers, GClosure *closure );

    ClutterBindingPool* clutter_binding_pool_new( gchar *name );

    void clutter_binding_pool_override_action( ClutterBindingPool *pool, guint key_val, ClutterModifierType modifiers, GCallback callback, gpointer data, GDestroyNotify notify );

    void clutter_binding_pool_override_closure( ClutterBindingPool *pool, guint key_val, ClutterModifierType modifiers, GClosure *closure );

    void clutter_binding_pool_remove_action( ClutterBindingPool *pool, guint key_val, ClutterModifierType modifiers );
    
    void clutter_binding_pool_unblock_action( ClutterBindingPool *pool, gchar *action_name );

    //void clutter_cairo_set_source_color( cairo_t *cr, ClutterColor *color );

    void clutter_cairo_texture_clear( ClutterCairoTexture *self );

    //cairo_t* clutter_cairo_texture_create( ClutterCairoTexture *self );

    //cairo_t* clutter_cairo_texture_create_region( ClutterCairoTexture *self, gint x_offset, gint y_offset, gint width, gint height );

    void clutter_cairo_texture_get_surface_size( ClutterCairoTexture *self, guint *width, guint *height );

    ClutterActor* clutter_cairo_texture_new( guint width, guint height );

    void clutter_cairo_texture_set_surface_size( ClutterCairoTexture *self, guint width, guint height );

    ClutterActor* clutter_child_meta_get_actor( ClutterChildMeta *data );

    ClutterContainer* clutter_child_meta_get_container( ClutterChildMeta *data );
    
    void clutter_clear_glyph_cache();

    ClutterActor* clutter_clone_get_source( ClutterClone *clone );

    ClutterActor* clutter_clone_new( ClutterActor *source );

    void clutter_clone_set_source( ClutterClone *clone, ClutterActor *source );

    void clutter_color_add( ClutterColor *a, ClutterColor *b, ClutterColor *result );

    ClutterColor* clutter_color_copy( ClutterColor *color );

    void clutter_color_darken( ClutterColor *color, ClutterColor *result );

    gboolean clutter_color_equal( gconstpointer v1, gconstpointer v2 );

    void clutter_color_free( ClutterColor *color );

    void clutter_color_from_hls( ClutterColor *color, gfloat hue, gfloat luminance, gfloat saturation );

    void clutter_color_from_pixel( ClutterColor *color, guint32 pixel );

    gboolean clutter_color_from_string( ClutterColor *color, gchar *str );

    guint clutter_color_hash( gconstpointer v );

    void clutter_color_lighten( ClutterColor *color, ClutterColor *result );

    ClutterColor* clutter_color_new( guint8 red, guint8 green, guint8 blue, guint8 alpha );

    void clutter_color_shade( ClutterColor *color, gdouble factor, ClutterColor *result );

    void clutter_color_subtract( ClutterColor *a, ClutterColor *b, ClutterColor *result );

    void clutter_color_to_hls( ClutterColor *color, gfloat *hue, gfloat *luminance, gfloat *saturation );

    guint32 clutter_color_to_pixel( ClutterColor *color );

    gchar* clutter_color_to_string( ClutterColor *color );

    void clutter_container_add( ClutterContainer *container, ClutterActor *first_actor, ... );

    void clutter_container_add_actor( ClutterContainer *container, ClutterActor *actor );

    void clutter_container_add_valist( ClutterContainer *container, ClutterActor *first_actor, va_list var_args );

    void clutter_container_child_get( ClutterContainer *container, ClutterActor *actor, gchar *first_prop, ... );

    void clutter_container_child_get_property( ClutterContainer *container, ClutterActor *child, gchar *property, GValue *value );

    void clutter_container_child_set( ClutterContainer *container, ClutterActor *actor, gchar *first_prop, ... );

    void clutter_container_child_set_property( ClutterContainer *container, ClutterActor *child, gchar *property, GValue *value );

    GParamSpec* clutter_container_class_find_child_property( GObjectClass *klass, gchar *property_name );

    GParamSpec** clutter_container_class_list_child_properties( GObjectClass *klass, guint *n_properties );

    ClutterActor* clutter_container_find_child_by_name( ClutterContainer *container, gchar *child_name );

    void clutter_container_foreach( ClutterContainer *container, ClutterCallback callback, gpointer user_data );

    void clutter_container_foreach_with_internals( ClutterContainer *container, ClutterCallback callback, gpointer user_data );

    GList* clutter_container_get_children( ClutterContainer *container );

    ClutterChildMeta* clutter_container_get_child_meta( ClutterContainer *container, ClutterActor *actor );

    void clutter_container_lower_child( ClutterContainer *container, ClutterActor *actor, ClutterActor *sibling );

    void clutter_container_raise_child( ClutterContainer *container, ClutterActor *actor, ClutterActor *sibling );

    void clutter_container_remove( ClutterContainer *container, ClutterActor *first_actor, ... );

    void clutter_container_remove_actor( ClutterContainer *container, ClutterActor *actor );

    void clutter_container_remove_valist( ClutterContainer *container, ClutterActor *first_actor, va_list var_args );

    void clutter_container_sort_depth_order( ClutterContainer *container );

    void clutter_ungrab_pointer_for_device( gint id );

    /*
    EGLDisplay clutter_eglx_display();

    EGLDisplay clutter_egl_display();
    */

    gboolean clutter_events_pending();

    ClutterEvent* clutter_event_copy( ClutterEvent *event );

    void clutter_event_free( ClutterEvent *event );

    ClutterEvent* clutter_event_get();

    guint32 clutter_event_get_button( ClutterEvent *event );

    guint clutter_event_get_click_count( ClutterEvent *event );

    void clutter_event_get_coords( ClutterEvent *event, gfloat *x, gfloat *y );

    ClutterInputDevice* clutter_event_get_device( ClutterEvent *event );

    gint clutter_event_get_device_id( ClutterEvent *event );

    ClutterInputDeviceType clutter_event_get_device_type( ClutterEvent *event );

    ClutterEventFlags clutter_event_get_flags( ClutterEvent *event );

    guint16 clutter_event_get_key_code( ClutterEvent *event );

    guint clutter_event_get_key_symbol( ClutterEvent *event );

    guint32 clutter_event_get_key_unicode( ClutterEvent *event );

    ClutterActor* clutter_event_get_related( ClutterEvent *event );

    ClutterScrollDirection clutter_event_get_scroll_direction( ClutterEvent *event );

    ClutterActor* clutter_event_get_source( ClutterEvent *event );

    ClutterStage* clutter_event_get_stage( ClutterEvent *event );

    ClutterModifierType clutter_event_get_state( ClutterEvent *event );

    guint32 clutter_event_get_time( ClutterEvent *event );

    ClutterEvent* clutter_event_new( ClutterEventType type );

    ClutterEvent* clutter_event_peek();

    void clutter_event_put( ClutterEvent *event );

    ClutterEventType clutter_event_type( ClutterEvent *event );

    guint clutter_frame_source_add( guint fps, GSourceFunc func, gpointer data );

    guint clutter_frame_source_add_full( gint priority, guint fps, GSourceFunc func, gpointer data, GDestroyNotify notify );

    ClutterActor* clutter_get_actor_by_gid( guint32 id );

    ClutterInputDeviceType clutter_input_device_get_device_type( ClutterInputDevice *device );

    gboolean clutter_get_debug_enabled();

    ClutterBackend* clutter_get_default_backend();

    guint clutter_get_default_frame_rate();

    ClutterFontFlags clutter_get_font_flags();

    //PangoFontMap* clutter_get_font_map();

    ClutterInputDevice* clutter_get_input_device_for_id( gint id );

    ClutterActor* clutter_get_keyboard_grab();

    gboolean clutter_get_motion_events_enables();

    GOptionGroup* clutter_get_option_group();

    GOptionGroup* clutter_get_option_group_without_init();

    ClutterActor* clutter_get_pointer_grab();

    gchar* clutter_get_script_id( GObject *gobject );

    gboolean clutter_get_show_fps();

    gulong clutter_get_timestamp();

    ClutterActor* clutter_glx_texture_pixmap_new();

    /*
    ClutterActor* clutter_glx_texture_pixmap_new_with_pixmap( Pixmap pixmap );

    ClutterActor* clutter_glx_texture_pixmap_new_with_window( Window window );

    ClutterActor* clutter_glx_texture_pixmap_new_with_window( Window window );
    */

    void clutter_grab_keyboard( ClutterActor *actor );
    
    void clutter_grab_pointer( ClutterActor *actor );

    void clutter_grab_pointer_for_device( ClutterActor *actor, gint id );

    gint clutter_group_get_n_children( ClutterGroup *self );

    gint clutter_group_get_n_children( ClutterGroup *self );

    ClutterActor* clutter_group_new();

    void clutter_group_remove_all( ClutterGroup *group );

    ClutterInitError clutter_init( int * argc, char *** argv );

    ClutterInitError clutter_init_with_args( int *argc, char ***argv, char *parameter_string, GOptionEntry *entries, char *translation_domain, GError **error );

    gint clutter_input_device_get_device_id( ClutterInputDevice *device );

    ClutterInputDeviceType clutter_input_device_get_device_type( ClutterInputDevice *device );

    ClutterInterval* clutter_interval_clone( ClutterInterval *interval );

    gboolean clutter_interval_compute_value( ClutterInterval *interval, gdouble factor, GValue *value );

    void clutter_interval_get_final_value( ClutterInterval *interval, GValue *value );

    void clutter_interval_get_initial_value( ClutterInterval *interval, GValue *value );

    void clutter_interval_get_interval( ClutterInterval *interval, ... );

    GType clutter_interval_get_value_type( ClutterInterval *interval );

    ClutterInterval* clutter_interval_new( GType gtype, ... );

    ClutterInterval* clutter_interval_new_with_values( GType gtype, GValue *initial, GValue *ifinal ); // Note: originally GValue *final, had to change to compile

    GValue* clutter_interval_peek_final_value( ClutterInterval *interval );

    GValue* clutter_interval_peek_initial_value( ClutterInterval *interval );

    void clutter_interval_register_progress_func( GType value_type, ClutterProgressFunc func );

    void clutter_interval_set_final_value( ClutterInterval *interval, GValue *value );

    void clutter_interval_set_initial_value( ClutterInterval *interval, GValue *value );

    void clutter_interval_set_interval( ClutterInterval *interval, ... );

    gboolean clutter_interval_validate( ClutterInterval *interval, GParamSpec *pspec );

    guint32 clutter_keysym_to_unicode( guint keyval );

    ClutterKnot* clutter_knot_copy( ClutterKnot *knot );

    gboolean clutter_knot_equal( ClutterKnot *knot_a, ClutterKnot *knot_b );

    void clutter_knot_free( ClutterKnot *knot );

    ClutterModel* clutter_list_model_new( guint n_columns, ... );

    ClutterModel* clutter_list_model_newv( guint n_columns, GType *types, gchar * names[] );
    
    void clutter_main();

    gint clutter_main_level();

    void clutter_main_quit();

    gdouble clutter_media_get_audio_volume( ClutterMedia *media );

    gdouble clutter_media_get_buffer_fill( ClutterMedia *media );

    gboolean clutter_media_get_can_seek( ClutterMedia *media );

    gdouble clutter_media_get_duration( ClutterMedia *media );

    gboolean clutter_media_get_playing( ClutterMedia *media );

    gdouble clutter_media_get_progress( ClutterMedia *media );

    gchar* clutter_media_get_uri( ClutterMedia *media );

    void clutter_media_set_audio_volume( ClutterMedia *media, gdouble volume );

    void clutter_media_set_filename( ClutterMedia *media, gchar *filename );

    void clutter_media_set_playing( ClutterMedia *media, gboolean playing );

    void clutter_media_set_progress( ClutterMedia *media, gdouble progress );

    void clutter_media_set_uri( ClutterMedia *media, gchar *uri );

    void clutter_model_append( ClutterModel *model, ... );

    void clutter_model_appendv( ClutterModel *model, guint n_columns, guint *columns, GValue *values );

    gboolean clutter_model_filter_iter( ClutterModel *model, ClutterModelIter *iter );

    gboolean clutter_model_filter_row( ClutterModel *model, guint row );

    void clutter_model_foreach( ClutterModel *model, ClutterModelForeachFunc func, gpointer user_data );

    gchar* clutter_model_get_column_name( ClutterModel *model, guint column );

    GType clutter_model_get_column_type( ClutterModel *model, guint column );

    gboolean clutter_model_get_filter_set( ClutterModel *model );

    ClutterModelIter* clutter_model_get_first_iter( ClutterModel *model );

    ClutterModelIter* clutter_model_get_iter_at_row( ClutterModel *model, guint row );

    ClutterModelIter* clutter_model_get_last_iter( ClutterModel *model );

    guint clutter_model_get_n_columns( ClutterModel *model );

    guint clutter_model_get_n_rows( ClutterModel *model );

    gint clutter_model_get_sorting_column( ClutterModel *model );

    void clutter_model_insert( ClutterModel *model, guint row, ... );

    void clutter_model_insertv( ClutterModel *model, guint row, guint n_columns, guint *columns, GValue *values );

    void clutter_model_insert_value( ClutterModel *model, guint row, guint column, GValue *value );

    ClutterModelIter* clutter_model_iter_copy( ClutterModelIter *iter );

    void clutter_model_iter_get( ClutterModelIter *iter, ... );

    ClutterModel* clutter_model_iter_get_model( ClutterModelIter *iter );
    
    uint clutter_model_iter_get_row( ClutterModelIter *iter );

    void clutter_model_iter_get_valist( ClutterModelIter *iter, va_list args );

    void clutter_model_iter_get_value( ClutterModelIter *iter, guint column, GValue *value );

    gboolean clutter_model_iter_is_first( ClutterModelIter *iter );

    gboolean clutter_model_iter_is_last( ClutterModelIter *iter );

    ClutterModelIter* clutter_model_iter_next( ClutterModelIter *iter );

    ClutterModelIter* clutter_model_iter_prev( ClutterModelIter *iter );

    void clutter_model_iter_set( ClutterModelIter *iter, ... );

    void clutter_model_iter_set_valist( ClutterModelIter *iter, va_list args );

    void clutter_model_iter_set_value( ClutterModelIter *iter, guint column, GValue *value );

    void clutter_model_prepend( ClutterModel *model, ... );

    void clutter_model_prependv( ClutterModel *model, guint n_columns, guint *columns, GValue *values );

    void clutter_model_remove( ClutterModel *model, guint row );

    void clutter_model_resort( ClutterModel *model );

    void clutter_model_set_filter( ClutterModel *model, ClutterModelFilterFunc func, gpointer user_data, GDestroyNotify notify );

    void clutter_model_set_names( ClutterModel *model, guint n_columns, gchar * names[] );

    void clutter_model_set_sort( ClutterModel *model, guint column, ClutterModelSortFunc func, gpointer user_data, GDestroyNotify notify );

    void clutter_model_set_sorting_column( ClutterModel *model, gint column );

    void clutter_model_set_types( ClutterModel *model, guint n_columns, GType *types );

    GParamSpec* clutter_param_spec_color( gchar *name, gchar *nick, gchar *blurb, ClutterColor *default_value, GParamFlags flags );

    GParamSpec* clutter_param_spec_fixed( gchar *name, gchar *nick, gchar *blurb, CoglFixed minimum, CoglFixed maximum, CoglFixed default_value, GParamFlags flags );

    GParamSpec* clutter_param_spec_units( gchar *name, gchar *nick, gchar *blurb, ClutterUnitType default_type, gfloat minimum, gfloat maximum, gfloat default_value, GParamFlags flags );

    //void clutter_path_add_cairo_path( ClutterPath *path, cairo_path_t *cpath );

    void clutter_path_add_close( ClutterPath *path );

    void clutter_path_add_curve_to( ClutterPath *path, gint x_1, gint y_1, gint x_2, gint y_2, gint x_3, gint y_3 );

    void clutter_path_add_line_to( ClutterPath *path, gint x, gint y );

    void clutter_path_add_move_to( ClutterPath *path, gint x, gint y );

    void clutter_path_add_node( ClutterPath *path, ClutterPathNode *node );

    void clutter_path_add_rel_curve_to( ClutterPath *path, gint x_1, gint y_1, gint x_2, gint y_2, gint x_3, gint y_3 );

    void clutter_path_add_rel_line_to( ClutterPath *path, gint x, gint y );

    void clutter_path_add_rel_move_to( ClutterPath *path, gint x, gint y );

    gboolean clutter_path_add_string( ClutterPath *path, gchar *str );

    void clutter_path_clear( ClutterPath *path );

    void clutter_path_foreach( ClutterPath *path, ClutterPathCallback callback, gpointer user_data );

    gchar* clutter_path_get_description( ClutterPath *path );

    guint clutter_path_get_length( ClutterPath *path );

    void clutter_path_get_node( ClutterPath *path, guint index_, ClutterPathNode *node );

    GSList* clutter_path_get_nodes( ClutterPath *path );

    guint clutter_path_get_n_nodes( ClutterPath *path );

    guint clutter_path_get_position( ClutterPath *path, gdouble progress, ClutterKnot *position );

    void clutter_path_insert_node( ClutterPath *path, gint index_, ClutterPathNode *node                                                          );

    ClutterPath* clutter_path_new();

    ClutterPath* clutter_path_new_with_description( gchar *desc );

    ClutterPathNode* clutter_path_node_copy( ClutterPathNode *node );

    gboolean clutter_path_node_equal( ClutterPathNode *node_a, ClutterPathNode *node_b );

    void clutter_path_node_free( ClutterPathNode *node );

    void clutter_path_remove_node( ClutterPath *path, guint index_ );

    void clutter_path_replace_node( ClutterPath *path, guint index_, ClutterPathNode *node );

    gboolean clutter_path_set_description( ClutterPath *path, gchar *str );

    //void clutter_path_to_cairo_path( ClutterPath *path, cairo_t *cr );

    void clutter_rectangle_get_border_color( ClutterRectangle *rectangle, ClutterColor *color );

    guint clutter_rectangle_get_border_width( ClutterRectangle *rectangle );

    void clutter_rectangle_get_color( ClutterRectangle *rectangle, ClutterColor *color );

    ClutterActor* clutter_rectangle_new();

    ClutterActor* clutter_rectangle_new_with_color( ClutterColor *color );

    void clutter_rectangle_set_border_color( ClutterRectangle *rectangle, ClutterColor *color );

    void clutter_rectangle_set_border_width( ClutterRectangle *rectangle, guint width );

    void clutter_rectangle_set_color( ClutterRectangle *rectangle, ClutterColor *color );

    gulong clutter_score_append( ClutterScore *score, ClutterTimeline *parent, ClutterTimeline *timeline );

    gulong clutter_score_append_at_marker( ClutterScore *score, ClutterTimeline *parent, gchar *marker_name, ClutterTimeline *timeline );

    gboolean clutter_score_get_loop( ClutterScore *score );

    ClutterTimeline* clutter_score_get_timeline( ClutterScore *score, gulong id );

    gboolean clutter_score_is_playing( ClutterScore *score );

    GSList* clutter_score_list_timelines( ClutterScore *score );

    ClutterScore* clutter_score_new();

    void clutter_score_pause( ClutterScore *score );

    void clutter_score_remove( ClutterScore *score, gulong id );

    void clutter_score_remove_all( ClutterScore *score );

    void clutter_score_rewind( ClutterScore *score );

    void clutter_score_set_loop( ClutterScore *score, gboolean loop );

    void clutter_score_start( ClutterScore *score );

    void clutter_score_stop( ClutterScore *score );

    gchar* clutter_scriptable_get_id( ClutterScriptable *scriptable );

    gboolean clutter_scriptable_parse_custom_node( ClutterScriptable *scriptable, ClutterScript *script, GValue *value, gchar *name, JsonNode *node );

    void clutter_scriptable_set_custom_property( ClutterScriptable *scriptable, ClutterScript *script, gchar *name, GValue *value );

    void clutter_scriptable_set_id( ClutterScriptable *scriptable, gchar *id );

    void clutter_script_add_search_paths( ClutterScript *script, gchar * paths[], gsize n_paths );

    void clutter_script_connect_signals( ClutterScript *script, gpointer user_data );

    void clutter_script_connect_signals_full( ClutterScript *script, ClutterScriptConnectFunc func, gpointer user_data );

    void clutter_script_ensure_objects( ClutterScript *script );

    GObject* clutter_script_get_object( ClutterScript *script, gchar *name );

    gint clutter_script_get_objects(ClutterScript *script, gchar *first_name, ... );

    GType clutter_script_get_type_from_name( ClutterScript *script, gchar *type_name );

    GList* clutter_script_list_objects( ClutterScript *script );

    guint clutter_script_load_from_data( ClutterScript *script, gchar *data, gssize length, GError **error );

    guint clutter_script_load_from_file( ClutterScript *script, gchar *filename, GError **error );

    gchar* clutter_script_lookup_filename( ClutterScript *script, gchar *filename );

    ClutterScript* clutter_script_new();

    void clutter_script_unmerge_objects( ClutterScript *script, guint merge_id );

    void clutter_set_default_frame_rate( guint frames_per_sec );

    void clutter_set_font_flags( ClutterFontFlags flags );

    void clutter_set_motion_events_enabled( gboolean enable );

    gboolean clutter_shader_compile( ClutterShader *shader, GError **error );

    CoglHandle clutter_shader_get_cogl_fragment_shader( ClutterShader *shader );

    CoglHandle clutter_shader_get_cogl_program( ClutterShader *shader );

    CoglHandle clutter_shader_get_cogl_vertex_shader( ClutterShader *shader );

    gchar* clutter_shader_get_fragment_source( ClutterShader *shader );

    gboolean clutter_shader_get_is_enabled( ClutterShader *shader );

    gchar* clutter_shader_get_vertex_source( ClutterShader *shader );

    gboolean clutter_shader_is_compiled( ClutterShader *shader );

    ClutterShader* clutter_shader_new();

    void clutter_shader_release( ClutterShader *shader );

    void clutter_shader_set_fragment_source( ClutterShader *shader, gchar *data, gssize length );

    void clutter_shader_set_is_enabled( ClutterShader *shader, gboolean enabled );

    void clutter_shader_set_uniform( ClutterShader *shader, gchar *name, GValue *value );

    void clutter_shader_set_vertex_source( ClutterShader *shader, gchar *data, gssize length );

    void clutter_stage_ensure_current( ClutterStage *stage );

    void clutter_stage_ensure_redraw( ClutterStage *stage );

    void clutter_stage_ensure_viewport( ClutterStage *stage );

    gboolean clutter_stage_event( ClutterStage *stage, ClutterEvent *event );

    ClutterActor* clutter_stage_get_actor_at_pos( ClutterStage *stage, ClutterPickMode pick_mode, gint x, gint y );

    void clutter_stage_get_color( ClutterStage *stage, ClutterColor *color );

    ClutterActor* clutter_stage_get_default();

    void clutter_stage_get_fog( ClutterStage *stage, ClutterFog *fog );

    gboolean clutter_stage_get_fullscreen( ClutterStage *stage );

    ClutterActor* clutter_stage_get_key_focus( ClutterStage *stage );

    void clutter_stage_get_perspective( ClutterStage *stage, ClutterPerspective *perspective );

    gboolean clutter_stage_get_throttle_motion_events( ClutterStage *stage );

    gchar* clutter_stage_get_title( ClutterStage *stage );

    gboolean clutter_stage_get_user_resizable( ClutterStage *stage );

    gboolean clutter_stage_get_use_fog( ClutterStage *stage );

    void clutter_stage_hide_cursor( ClutterStage *stage );

    gboolean clutter_stage_is_default( ClutterStage *stage );

    ClutterActor* clutter_stage_new();

    void clutter_stage_queue_redraw( ClutterStage *stage );

    guchar* clutter_stage_read_pixels( ClutterStage *stage, gint x, gint y, gint width, gint height );

    void clutter_stage_set_color( ClutterStage *stage, ClutterColor *color );

    void clutter_stage_set_fog( ClutterStage *stage, ClutterFog *fog );

    void clutter_stage_set_fullscreen( ClutterStage *stage, gboolean fullscreen );

    void clutter_stage_set_key_focus( ClutterStage *stage, ClutterActor *actor );

    void clutter_stage_set_perspective( ClutterStage *stage, ClutterPerspective *perspective );

    void clutter_stage_set_throttle_motion_events( ClutterStage *stage, gboolean throttle );

    void clutter_stage_set_title( ClutterStage *stage, gchar *title );

    void clutter_stage_set_user_resizable( ClutterStage *stage, gboolean resizable );

    void clutter_stage_set_use_fog( ClutterStage *stage, gboolean fog );

    void clutter_stage_show_cursor( ClutterStage *stage );

    void clutter_texture_get_base_size( ClutterTexture *texture, gint *width, gint *height );

    CoglHandle clutter_texture_get_cogl_material( ClutterTexture *texture );

    CoglHandle clutter_texture_get_cogl_texture( ClutterTexture *texture );

    ClutterTextureQuality clutter_texture_get_filter_quality( ClutterTexture *texture );

    gboolean clutter_texture_get_keep_aspect_ratio( ClutterTexture *texture );

    gboolean clutter_texture_get_load_async( ClutterTexture *texture );

    gboolean clutter_texture_get_load_data_async( ClutterTexture *texture );

    gint clutter_texture_get_max_tile_waste( ClutterTexture *texture );

    CoglPixelFormat clutter_texture_get_pixel_format( ClutterTexture *texture );

    void clutter_texture_get_repeat( ClutterTexture *texture, gboolean *repeat_x, gboolean *repeat_y );

    gboolean clutter_texture_get_sync_size( ClutterTexture *texture );

    ClutterActor* clutter_texture_new();

    ClutterActor* clutter_texture_new_from_actor( ClutterActor *actor );

    ClutterActor* clutter_texture_new_from_file( gchar *filename, GError **error );

    gboolean clutter_texture_set_area_from_rgb_data( ClutterTexture *texture, guchar *data, gboolean has_alpha, gint x, gint y, gint width, gint height, gint rowstride, gint bpp, ClutterTextureFlags flags, GError **error );

    void clutter_texture_set_cogl_material( ClutterTexture *texture, CoglHandle cogl_material );

    void clutter_texture_set_cogl_texture( ClutterTexture *texture, CoglHandle cogl_tex );

    void clutter_texture_set_filter_quality( ClutterTexture *texture, ClutterTextureQuality filter_quality );

    gboolean clutter_texture_set_from_file( ClutterTexture *texture, gchar *filename, GError **error );

    gboolean clutter_texture_set_from_rgb_data( ClutterTexture *texture, guchar *data, gboolean has_alpha, gint width, gint height, gint rowstride, gint bpp, ClutterTextureFlags flags, GError **error );

    gboolean clutter_texture_set_from_yuv_data( ClutterTexture *texture, guchar *data, gint width, gint height, ClutterTextureFlags flags, GError **error );

    void clutter_texture_set_keep_aspect_ratio( ClutterTexture *texture, gboolean keep_aspect );

    void clutter_texture_set_load_async( ClutterTexture *texture, gboolean load_async );

    void clutter_texture_set_load_data_async ( ClutterTexture *texture, gboolean load_async );

    void clutter_texture_set_repeat( ClutterTexture *texture, gboolean repeat_x, gboolean repeat_y );

    void clutter_texture_set_sync_size( ClutterTexture *texture, gboolean sync_size );

    gboolean clutter_text_activate( ClutterText *self );

    void clutter_text_delete_chars( ClutterText *self, guint n_chars );

    gboolean clutter_text_delete_selection( ClutterText *self );

    void clutter_text_delete_text( ClutterText *self, gssize start_pos, gssize end_pos );

    gboolean clutter_text_get_activatable( ClutterText *self );

    //PangoAttrList* clutter_text_get_attributes( ClutterText *self );

    gchar* clutter_text_get_chars( ClutterText *self, gssize start_pos, gssize end_pos );

    void clutter_text_get_color( ClutterText *self, ClutterColor *color );

    void clutter_text_get_cursor_color( ClutterText *self, ClutterColor *color );

    gint clutter_text_get_cursor_position( ClutterText *self );

    guint clutter_text_get_cursor_size( ClutterText *self );

    gboolean clutter_text_get_cursor_visible( ClutterText *self );

    gboolean clutter_text_get_editable( ClutterText *self );

    //PangoEllipsizeMode clutter_text_get_ellipsize( ClutterText *self );

    gchar* clutter_text_get_font_name( ClutterText *self );

    gboolean clutter_text_get_justify( ClutterText *self );

    //PangoLayout* clutter_text_get_layout( ClutterText *self );

    //PangoAlignment clutter_text_get_line_alignment( ClutterText *self );

    gboolean clutter_text_get_line_wrap( ClutterText *self );

    //PangoWrapMode clutter_text_get_line_wrap_mode( ClutterText *self );

    gint clutter_text_get_max_length( ClutterText *self );

    gunichar clutter_text_get_password_char( ClutterText *self );

    gboolean clutter_text_get_selectable( ClutterText *self );

    gchar* clutter_text_get_selection( ClutterText *self );

    gint clutter_text_get_selection_bound( ClutterText *self );

    void clutter_text_get_selection_color( ClutterText *self, ClutterColor *color );

    gboolean clutter_text_get_single_line_mode( ClutterText *self );

    gchar* clutter_text_get_text( ClutterText *self );

    gboolean clutter_text_get_use_markup( ClutterText *self );

    void clutter_text_insert_text( ClutterText *self, gchar *text, gssize position );

    void clutter_text_insert_unichar( ClutterText *self, gunichar wc );

    ClutterActor* clutter_text_new();

    ClutterActor* clutter_text_new_full( gchar *font_name, gchar *text, ClutterColor *color );

    ClutterActor* clutter_text_new_with_text( gchar *font_name, gchar *text );

    gboolean clutter_text_position_to_coords( ClutterText *self, gint position, gfloat *x, gfloat *y, gfloat *line_height );

    void clutter_text_set_activatable( ClutterText *self, gboolean activatable );

    //void clutter_text_set_attributes( ClutterText *self, PangoAttrList *attrs );

    void clutter_text_set_color( ClutterText *self, ClutterColor *color );
    
    void clutter_text_set_cursor_color( ClutterText *self, ClutterColor *color );

    void clutter_text_set_cursor_position( ClutterText *self, gint position );

    void clutter_text_set_cursor_size( ClutterText *self, gint size );

    void clutter_text_set_cursor_visible( ClutterText *self, gboolean cursor_visible );

    void clutter_text_set_editable( ClutterText *self, gboolean editable );

    //void clutter_text_set_ellipsize( ClutterText *self, PangoEllipsizeMode mode );

    void clutter_text_set_font_name( ClutterText *self, gchar *font_name );

    void clutter_text_set_justify( ClutterText *self, gboolean justify );

    //void clutter_text_set_line_alignment( ClutterText *self, PangoAlignment alignment );

    void clutter_text_set_line_wrap( ClutterText *self, gboolean line_wrap );

    //void clutter_text_set_line_wrap_mode( ClutterText *self, PangoWrapMode wrap_mode );

    void clutter_text_set_markup( ClutterText *self, gchar *markup );

    void clutter_text_set_max_length( ClutterText *self, gint max );

    void clutter_text_set_password_char( ClutterText *self, gunichar wc );

    void clutter_text_set_selectable( ClutterText *self, gboolean selectable );

    void clutter_text_set_selection( ClutterText *self, gssize start_pos, gssize end_pos );

    void clutter_text_set_selection_bound( ClutterText *self, gint selection_bound );

    void clutter_text_set_selection_color( ClutterText *self, ClutterColor *color );

    void clutter_text_set_single_line_mode( ClutterText *self, gboolean single_line );

    void clutter_text_set_text( ClutterText *self, gchar *text );

    void clutter_text_set_use_markup( ClutterText *self, gboolean setting );

    guint clutter_threads_add_frame_source( guint fps, GSourceFunc func, gpointer data );

    guint clutter_threads_add_frame_source_full( gint priority, guint fps, GSourceFunc func, gpointer data, GDestroyNotify notify );

    guint clutter_threads_add_idle( GSourceFunc func, gpointer data );

    guint clutter_threads_add_idle_full( gint priority, GSourceFunc func, gpointer data, GDestroyNotify notify );

    guint clutter_threads_add_repaint_func( GSourceFunc func, gpointer data, GDestroyNotify notify );

    guint clutter_threads_add_timeout( guint interval, GSourceFunc func, gpointer data );

    guint clutter_threads_add_timeout_full( gint priority, guint interval, GSourceFunc func, gpointer data, GDestroyNotify notify );

    void clutter_threads_enter();

    void clutter_threads_init();

    void clutter_threads_leave();

    void clutter_threads_remove_repaint_func( guint handle_id );

    void clutter_threads_set_lock_functions( GCallback enter_fn, GCallback leave_fn );

    void clutter_timeline_add_marker_at_time( ClutterTimeline *timeline, gchar *marker_name, guint msecs );

    void clutter_timeline_advance( ClutterTimeline *timeline, guint msecs );

    void clutter_timeline_advance_to_marker( ClutterTimeline *timeline, gchar *marker_name );

    ClutterTimeline* clutter_timeline_clone( ClutterTimeline *timeline );

    guint clutter_timeline_get_delay( ClutterTimeline *timeline );

    guint clutter_timeline_get_delta( ClutterTimeline *timeline );

    ClutterTimelineDirection clutter_timeline_get_direction( ClutterTimeline *timeline );

    guint clutter_timeline_get_duration( ClutterTimeline *timeline );

    guint clutter_timeline_get_elapsed_time( ClutterTimeline *timeline );

    gboolean clutter_timeline_get_loop( ClutterTimeline *timeline );

    gdouble clutter_timeline_get_progress( ClutterTimeline *timeline );

    gboolean clutter_timeline_has_marker( ClutterTimeline *timeline, gchar *marker_name );

    gboolean clutter_timeline_is_playing( ClutterTimeline *timeline );

    gchar** clutter_timeline_list_markers( ClutterTimeline *timeline, gint msecs, gsize *n_markers );

    ClutterTimeline* clutter_timeline_new( guint msecs );

    void clutter_timeline_pause( ClutterTimeline *timeline );

    void clutter_timeline_remove_marker( ClutterTimeline *timeline, gchar *marker_name );

    void clutter_timeline_rewind( ClutterTimeline *timeline );

    void clutter_timeline_set_delay( ClutterTimeline *timeline, guint msecs );

    void clutter_timeline_set_direction( ClutterTimeline *timeline, ClutterTimelineDirection direction );

    void clutter_timeline_set_duration( ClutterTimeline *timeline, guint msecs );

    void clutter_timeline_set_loop( ClutterTimeline *timeline, gboolean loop );

    void clutter_timeline_skip( ClutterTimeline *timeline, guint msecs );

    void clutter_timeline_start( ClutterTimeline *timeline );

    void clutter_timeline_stop( ClutterTimeline *timeline );

    guint clutter_timeout_pool_add( ClutterTimeoutPool *pool, guint fps, GSourceFunc func, gpointer data, GDestroyNotify notify );

    ClutterTimeoutPool* clutter_timeout_pool_new( gint priority );

    void clutter_timeout_pool_remove( ClutterTimeoutPool *pool, guint id );

    void clutter_ungrab_keyboard();

    void clutter_ungrab_pointer();

    void clutter_ungrab_pointer_for_device( gint id );

    ClutterUnits* clutter_units_copy( ClutterUnits *units );

    void clutter_units_free( ClutterUnits *units );

    void clutter_units_from_em( ClutterUnits *units, gfloat em );

    void clutter_units_from_em_for_font( ClutterUnits *units, gchar *font_name, gfloat em );

    void clutter_units_from_mm( ClutterUnits *units, gfloat mm );

    void clutter_units_from_pixels( ClutterUnits *units, gint px );

    void clutter_units_from_pt( ClutterUnits *units, gfloat pt );

    gboolean clutter_units_from_string( ClutterUnits *units, gchar *str );

    ClutterUnitType clutter_units_get_unit_type( ClutterUnits *units );

    gfloat clutter_units_get_unit_value( ClutterUnits *units );

    gfloat clutter_units_to_pixels( ClutterUnits *units );

    gchar* clutter_units_to_string( ClutterUnits *units );

    int clutter_util_next_p2( int a );

    void clutter_value_set_color( GValue *value, ClutterColor *color );

    void clutter_value_set_fixed( GValue *value, CoglFixed fixed_ );

    gfloat* clutter_value_get_shader_float( GValue *value, gsize *length );
    
    gint* clutter_value_get_shader_int( GValue *value, gsize *length );

    gfloat* clutter_value_get_shader_matrix( GValue *value, gsize *length );

    void clutter_value_set_units( GValue *value, ClutterUnits *units );

    void clutter_value_set_color( GValue *value, ClutterColor *color );

    void clutter_value_set_fixed( GValue *value, CoglFixed fixed_ );

    void clutter_value_set_shader_float( GValue *value, gint size, gfloat *floats );

    void clutter_value_set_shader_int( GValue *value, gint size, gint *ints );

    void clutter_value_set_shader_matrix( GValue *value, gint size, gfloat *matrix );

    void clutter_value_set_units( GValue *value, ClutterUnits *units );

    ClutterVertex* clutter_vertex_copy( ClutterVertex *vertex );

    gboolean clutter_vertex_equal( ClutterVertex *vertex_a, ClutterVertex *vertex_b );

    void clutter_vertex_free( ClutterVertex *vertex );

    ClutterVertex* clutter_vertex_new( gfloat x, gfloat y, gfloat z );

    void clutter_win32_disable_event_retrieval();

    /*
    ClutterStage* clutter_win32_get_stage_from_window( HWND hwnd );

    ClutterStage* clutter_win32_get_stage_from_window( HWND hwnd );

    gboolean clutter_win32_set_stage_foreign( ClutterStage *stage, HWND hwnd );
    */

    /*
    void clutter_x11_add_filter( ClutterX11FilterFunc func, gpointer data );

    void clutter_x11_disable_event_retrieval();

    void clutter_x11_enable_xinput();

    Time clutter_x11_get_current_event_time();

    Display* clutter_x11_get_default_display();

    int clutter_x11_get_default_screen();

    GSList* clutter_x11_get_input_devices();

    Window clutter_x11_get_root_window();

    ClutterStage* clutter_x11_get_stage_from_window( Window win );

    XVisualInfo* clutter_x11_get_stage_visual( ClutterStage *stage );

    Window clutter_x11_get_stage_window( ClutterStage *stage );

    ClutterX11FilterReturn clutter_x11_handle_event( XEvent *xevent );

    gboolean clutter_x11_has_composite_extension();

    gboolean clutter_x11_has_event_retrieval();

    gboolean clutter_x11_has_xinput();

    void clutter_x11_remove_filter( ClutterX11FilterFunc func, gpointer data );

    void clutter_x11_set_display( Display *xdpy );

    gboolean clutter_x11_set_stage_foreign( ClutterStage *stage, Window xwindow );

    ClutterActor* clutter_x11_texture_pixmap_new();

    ClutterActor* clutter_x11_texture_pixmap_new_with_pixmap( Pixmap pixmap );

    ClutterActor* clutter_x11_texture_pixmap_new_with_window( Window window );

    void clutter_x11_texture_pixmap_update_area( ClutterX11TexturePixmap *texture, gint x, gint y, gint width, gint height );

    void clutter_x11_texture_pixmap_set_pixmap( ClutterX11TexturePixmap *texture, Pixmap pixmap );

    void clutter_x11_texture_pixmap_set_window( ClutterX11TexturePixmap *texture, Window window, gboolean automatic );

    void clutter_x11_texture_pixmap_sync_window( ClutterX11TexturePixmap *texture );

    void clutter_x11_texture_pixmap_update_area( ClutterX11TexturePixmap *texture, gint x, gint y, gint width, gint height );

    void clutter_x11_trap_x_errors();

    gint clutter_x11_untrap_x_errors();
    */

}

ClutterStage* CLUTTER_STAGE( ClutterActor *stageactor ) {
    //return G_TYPE_CHECK_INSTANCE_CAST( obj, CLUTTER_TYPE_STAGE, ClutterStage );

    //if ( typeid(typeof( stageactor )) != typeid(ClutterActor*) ) writeln("TODO: Make exceptions!!");
    return cast( ClutterStage* ) stageactor;
}


/*
typedef ClutterInitError function( int * argc, char *** argv ) PFclutter_init;
shared PFclutter_init clutter_init;
*/
package void clutter_loadprocs(SharedLib lib)
{
    writeln( "clutter_loadprocs" );
    // cairo functions
    //Name = cast(pfName)getProc(lib, "Name");
    //clutter_init = cast(PFclutter_init)getProc(lib, "clutter_init");
}
