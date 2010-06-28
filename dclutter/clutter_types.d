
/+
 + Types of Clutter library
 +
 + Author: Álvaro Castro-Castilla
 + Version: 1.0.2
 +/

module dclutter.clutter_types;

package import gtkc.glibtypes;
package import gtkc.gobjecttypes;
private import dclutter.cogl_types;

extern(C):

/+
 + ClutterActor
 +/
enum ClutterActorFlags {
    CLUTTER_ACTOR_MAPPED   = 1 << 1,
    CLUTTER_ACTOR_REALIZED = 1 << 2,
    CLUTTER_ACTOR_REACTIVE = 1 << 3,
    CLUTTER_ACTOR_VISIBLE  = 1 << 4
}


/+
 + ClutterAllocationFlags
 +/
enum ClutterAllocationFlags {
  CLUTTER_ALLOCATION_NONE         = 0,
  CLUTTER_ABSOLUTE_ORIGIN_CHANGED = 1 << 1
}


/+
 + ClutterEventFlags
 +/
enum ClutterEventFlags {
    CLUTTER_EVENT_NONE           = 0,
    CLUTTER_EVENT_FLAG_SYNTHETIC = 1 << 0,
}


/+
 + ClutterEventType
 +/
enum ClutterEventType {
    CLUTTER_NOTHING = 0,
    CLUTTER_KEY_PRESS,
    CLUTTER_KEY_RELEASE,
    CLUTTER_MOTION,
    CLUTTER_ENTER,
    CLUTTER_LEAVE,
    CLUTTER_BUTTON_PRESS,
    CLUTTER_BUTTON_RELEASE,
    CLUTTER_SCROLL,
    CLUTTER_STAGE_STATE,
    CLUTTER_DESTROY_NOTIFY,
    CLUTTER_CLIENT_MESSAGE,
    CLUTTER_DELETE
}

/+
 + ClutterAnimationMode
 +/
enum ClutterAnimationMode {
    CLUTTER_CUSTOM_MODE = 0,

    /* linear */
    CLUTTER_LINEAR,

    /* quadratic */
    CLUTTER_EASE_IN_QUAD,
    CLUTTER_EASE_OUT_QUAD,
    CLUTTER_EASE_IN_OUT_QUAD,

    /* cubic */
    CLUTTER_EASE_IN_CUBIC,
    CLUTTER_EASE_OUT_CUBIC,
    CLUTTER_EASE_IN_OUT_CUBIC,

    /* quartic */
    CLUTTER_EASE_IN_QUART,
    CLUTTER_EASE_OUT_QUART,
    CLUTTER_EASE_IN_OUT_QUART,

    /* quintic */
    CLUTTER_EASE_IN_QUINT,
    CLUTTER_EASE_OUT_QUINT,
    CLUTTER_EASE_IN_OUT_QUINT,

    /* sinusoidal */
    CLUTTER_EASE_IN_SINE,
    CLUTTER_EASE_OUT_SINE,
    CLUTTER_EASE_IN_OUT_SINE,

    /* exponential */
    CLUTTER_EASE_IN_EXPO,
    CLUTTER_EASE_OUT_EXPO,
    CLUTTER_EASE_IN_OUT_EXPO,

    /* circular */
    CLUTTER_EASE_IN_CIRC,
    CLUTTER_EASE_OUT_CIRC,
    CLUTTER_EASE_IN_OUT_CIRC,

    /* elastic */
    CLUTTER_EASE_IN_ELASTIC,
    CLUTTER_EASE_OUT_ELASTIC,
    CLUTTER_EASE_IN_OUT_ELASTIC,

    /* overshooting cubic */
    CLUTTER_EASE_IN_BACK,
    CLUTTER_EASE_OUT_BACK,
    CLUTTER_EASE_IN_OUT_BACK,

    /* exponentially decaying parabolic */
    CLUTTER_EASE_IN_BOUNCE,
    CLUTTER_EASE_OUT_BOUNCE,
    CLUTTER_EASE_IN_OUT_BOUNCE,

    /* guard, before registered alpha functions */
    CLUTTER_ANIMATION_LAST
}


/+
 + ClutterFontFlags
 +/
enum ClutterFontFlags {
    CLUTTER_FONT_MIPMAPPING = (1 << 0),
    CLUTTER_FONT_HINTING = (1 << 1),
}


/+
 + ClutterGravity
 +/
enum ClutterGravity {
    CLUTTER_GRAVITY_NONE = 0,
    CLUTTER_GRAVITY_NORTH,
    CLUTTER_GRAVITY_NORTH_EAST,
    CLUTTER_GRAVITY_EAST,
    CLUTTER_GRAVITY_SOUTH_EAST,
    CLUTTER_GRAVITY_SOUTH,
    CLUTTER_GRAVITY_SOUTH_WEST,
    CLUTTER_GRAVITY_WEST,
    CLUTTER_GRAVITY_NORTH_WEST,
    CLUTTER_GRAVITY_CENTER
}


/+
 + ClutterInitError
 +/
enum ClutterInitError {
    CLUTTER_INIT_SUCCESS = 1,
    CLUTTER_INIT_ERROR_UNKNOWN =  0,
    CLUTTER_INIT_ERROR_THREADS = -1,
    CLUTTER_INIT_ERROR_BACKEND = -2,
    CLUTTER_INIT_ERROR_INTERNAL = -3
}


/+
 + ClutterInputDeviceType
 +/
enum ClutterInputDeviceType {
    CLUTTER_POINTER_DEVICE,
    CLUTTER_KEYBOARD_DEVICE,
    CLUTTER_EXTENSION_DEVICE,

    CLUTTER_N_DEVICE_TYPES
}


/+
 + ClutterModifierType
 +/
enum ClutterModifierType {
    CLUTTER_SHIFT_MASK = 1 << 0,
    CLUTTER_LOCK_MASK = 1 << 1,
    CLUTTER_CONTROL_MASK = 1 << 2,
    CLUTTER_MOD1_MASK = 1 << 3,
    CLUTTER_MOD2_MASK = 1 << 4,
    CLUTTER_MOD3_MASK = 1 << 5,
    CLUTTER_MOD4_MASK = 1 << 6,
    CLUTTER_MOD5_MASK = 1 << 7,
    CLUTTER_BUTTON1_MASK = 1 << 8,
    CLUTTER_BUTTON2_MASK = 1 << 9,
    CLUTTER_BUTTON3_MASK = 1 << 10,
    CLUTTER_BUTTON4_MASK = 1 << 11,
    CLUTTER_BUTTON5_MASK = 1 << 12,

    /* bits 15 to 25 are currently unused; bit 29 is used internally */

    CLUTTER_SUPER_MASK = 1 << 26,
    CLUTTER_HYPER_MASK = 1 << 27,
    CLUTTER_META_MASK = 1 << 28,

    CLUTTER_RELEASE_MASK = 1 << 30,

    CLUTTER_MODIFIER_MASK = 0x5c001fff
}


/+
 + ClutterPathNodeType
 +/
enum int CLUTTER_PATH_RELATIVE = 32;

enum ClutterPathNodeType {
    CLUTTER_PATH_MOVE_TO      = 0,
    CLUTTER_PATH_LINE_TO      = 1,
    CLUTTER_PATH_CURVE_TO     = 2,
    CLUTTER_PATH_CLOSE        = 3,

    CLUTTER_PATH_REL_MOVE_TO  = CLUTTER_PATH_MOVE_TO | CLUTTER_PATH_RELATIVE,
    CLUTTER_PATH_REL_LINE_TO  = CLUTTER_PATH_LINE_TO | CLUTTER_PATH_RELATIVE,
    CLUTTER_PATH_REL_CURVE_TO = CLUTTER_PATH_CURVE_TO | CLUTTER_PATH_RELATIVE
}


/+
 +
 +/
enum ClutterPickMode {
    CLUTTER_PICK_NONE = 0,
    CLUTTER_PICK_REACTIVE,
    CLUTTER_PICK_ALL
}


/+
 + ClutterRequestMode
 +/
enum ClutterRequestMode {
    CLUTTER_REQUEST_HEIGHT_FOR_WIDTH,
    CLUTTER_REQUEST_WIDTH_FOR_HEIGHT
}


/+
 + ClutterRotateAxis
 +/
enum ClutterRotateAxis {
    CLUTTER_X_AXIS,
    CLUTTER_Y_AXIS,
    CLUTTER_Z_AXIS
}


/+
 + ClutterRotateDirection
 +/
enum ClutterRotateDirection {
    CLUTTER_ROTATE_CW,
    CLUTTER_ROTATE_CCW
}


/+
 + ClutterScriptError
 +/
enum ClutterScriptError {
    CLUTTER_SCRIPT_ERROR_INVALID_TYPE_FUNCTION,
    CLUTTER_SCRIPT_ERROR_INVALID_PROPERTY,
    CLUTTER_SCRIPT_ERROR_INVALID_VALUE
}


/+
 + ClutterScrollDirection
 +/
enum ClutterScrollDirection {
    CLUTTER_SCROLL_UP,
    CLUTTER_SCROLL_DOWN,
    CLUTTER_SCROLL_LEFT,
    CLUTTER_SCROLL_RIGHT
}


/+
 + ClutterShaderError
 +/
enum ClutterShaderError {
    CLUTTER_SHADER_ERROR_NO_ASM,
    CLUTTER_SHADER_ERROR_NO_GLSL,
    CLUTTER_SHADER_ERROR_COMPILE
}


/+
 + ClutterStageState
 +/
enum ClutterStageState {
    CLUTTER_STAGE_STATE_FULLSCREEN = (1<<1),
    CLUTTER_STAGE_STATE_OFFSCREEN = (1<<2),
    CLUTTER_STAGE_STATE_ACTIVATED = (1<<3)
}


/+
 +  ClutterTexture{*}
 +/
enum ClutterTextureError {
    CLUTTER_TEXTURE_ERROR_OUT_OF_MEMORY,
    CLUTTER_TEXTURE_ERROR_NO_YUV,
    CLUTTER_TEXTURE_ERROR_BAD_FORMAT
}

enum ClutterTextureFlags {
    CLUTTER_TEXTURE_NONE = 0,
    CLUTTER_TEXTURE_RGB_FLAG_BGR = 1 << 1,
    CLUTTER_TEXTURE_RGB_FLAG_PREMULT = 1 << 2,
    CLUTTER_TEXTURE_YUV_FLAG_YUV2 = 1 << 3
}

enum ClutterTextureQuality {
    CLUTTER_TEXTURE_QUALITY_LOW,
    CLUTTER_TEXTURE_QUALITY_MEDIUM,
    CLUTTER_TEXTURE_QUALITY_HIGH
}


/+
 + ClutterTimelineDirection
 +/
enum ClutterTimelineDirection {
    CLUTTER_TIMELINE_FORWARD,
    CLUTTER_TIMELINE_BACKWARD
}


/+
 + ClutterUnitType
 +/
enum ClutterUnitType {
    CLUTTER_UNIT_PIXEL,
    CLUTTER_UNIT_EM,
    CLUTTER_UNIT_MM,
    CLUTTER_UNIT_POINT
}


/+
 + ClutterX11FilterReturn
 +/
enum ClutterX11FilterReturn {
    CLUTTER_X11_FILTER_CONTINUE,
    CLUTTER_X11_FILTER_TRANSLATE,
    CLUTTER_X11_FILTER_REMOVE
}




/+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/

struct ClutterActor {
    guint32 flags;
}

struct ClutterActorClass{
    void function( ClutterActor *actor ) show;
    void function( ClutterActor *actor ) show_all;
    void function( ClutterActor *actor ) hide;
    void function( ClutterActor *actor ) hide_all;
    void function( ClutterActor *actor ) realize;
    void function( ClutterActor *actor ) unrealize;
    void function( ClutterActor *actor ) map;
    void function( ClutterActor *actor ) unmap;
    void function( ClutterActor *actor ) paint;
    void function( ClutterActor *actor,
		   ClutterActor *old_parent ) parent_set;
    void function( ClutterActor *actor ) destroy;
    void function( ClutterActor *actor,
		   ClutterColor *color ) pick;
    void function( ClutterActor *actor,
		   ClutterActor *leaf_that_queued ) queue_redraw;
    void function( ClutterActor *actor,
	           gfloat for_height,
	           gfloat *min_width_p,
	           gfloat *natural_width_p ) get_preferred_width;
    void function( ClutterActor *actor,
	           gfloat for_width,
	           gfloat *min_height_p,
	           gfloat *natural_height_p ) get_preferred_height;
    void function( ClutterActor *actor,
	           ClutterActorBox *box,
	           ClutterAllocationFlags flags ) allocate;
    void function( ClutterActor *actor,
		   CoglMatrix *matrix ) apply_transform;
    gboolean function( ClutterActor *actor,
		       ClutterEvent *event ) event;
    gboolean function( ClutterActor *actor,
		       ClutterButtonEvent *event ) button_press_event;
    gboolean function( ClutterActor *actor,
		       ClutterButtonEvent *event ) button_release_event;
    gboolean function( ClutterActor *actor,
		       ClutterScrollEvent *event ) scroll_event;
    gboolean function( ClutterActor *actor,
		       ClutterKeyEvent *event ) key_press_event;
    gboolean function( ClutterActor *actor,
		       ClutterKeyEvent *event) key_release_event;
    gboolean function( ClutterActor *actor,
		       ClutterMotionEvent *event ) motion_event;
    gboolean function( ClutterActor *actor,
		       ClutterCrossingEvent *event ) enter_event;
    gboolean function( ClutterActor *actor,
		       ClutterCrossingEvent *event ) leave_event;
    gboolean function( ClutterActor *actor,
		       ClutterEvent *event ) captured_event;
    void function( ClutterActor *actor ) key_focus_in;
    void function( ClutterActor *actor ) key_focus_out;
}


/+
 + ClutterActorBox
 +/
 struct ClutterActorBox {
     gfloat x1;
     gfloat y1;

     gfloat x2;
     gfloat y2;
}


/+
 + ClutterAlpha
 +/
struct ClutterAlpha;

struct ClutterAlphaClass {}

alias gdouble function( ClutterAlpha *alpha, gpointer user_data ) ClutterAlphaFunc;


/+
 + ClutterAnimatable
 +/
struct ClutterAnimatable;

struct ClutterAnimatableIface {
    gboolean function(
	    ClutterAnimatable *animatable,
	    ClutterAnimation *animation,
	    gchar *property_name,
	    GValue *initial_value,
	    GValue *final_value,
	    gdouble progress,
	    GValue *value
	) animate_property;
}


/+
 + ClutterAnimation
 +/
struct ClutterAnimation;

struct ClutterAnimationClass {
    void function( ClutterAnimation *animation ) started;
    void function( ClutterAnimation *animation ) completed;
}


/+
 +
 +/
struct ClutterAnyEvent {
    ClutterEventType type;
    guint32 time;
    ClutterEventFlags flags;
    ClutterStage *stage;
    ClutterActor *source;
}


/+
 + ClutterBackend
 +/
struct ClutterBackend;


/+
 + ClutterBehaviour 
 +/
struct ClutterBehaviour;

struct ClutterBehaviourClass{
    /* vfunc, not signal */
    void function( ClutterBehaviour *behave,
		   gdouble alpha_value ) alpha_notify;
    /* signals */
    void function( ClutterBehaviour *behave,
		   ClutterActor *actor) applied;
    void function( ClutterBehaviour *behave,
		   ClutterActor *actor ) removed;
}

alias void function( ClutterBehaviour *behaviour,
		     ClutterActor *actor,
		     gpointer data) ClutterBehaviourForeachFunc;


/+
 + ClutterBehaviourDepth
 +/
struct ClutterBehaviourDepth;

struct ClutterBehaviourDepthClass {}


/+
 + ClutterBehaviourEllipse
 +/
struct ClutterBehaviourEllipse;

struct ClutterBehaviourEllipseClass {}


/+
 + ClutterBehaviourOpacity;
 +/
struct ClutterBehaviourOpacity;

struct ClutterBehaviourOpacityClass {}


/+
 + ClutterBehaviourPath
 +/
struct ClutterBehaviourPath;

struct ClutterBehaviourPathClass {
    void function( ClutterBehaviourPath *pathb,
		   guint knot_num ) knot_reached;
}

/+
 + ClutterBehaviourRotate
 +/
struct ClutterBehaviourRotate;

struct ClutterBehaviourRotateClass {}


/+
 + ClutterBehaviourScale
 +/
struct ClutterBehaviourScale;

struct ClutterBehaviourScaleClass {}


/+
 + 
 +/
gboolean function( GObject *gobject,
		   gchar *action_name,
		   guint key_val,
		   ClutterModifierType modifiers ) ClutterBindingActionFunc;


/+
 + ClutterBindingPool
 +/
struct ClutterBindingPool;


/+
 + ClutterButtonEvent
 +/
struct ClutterButtonEvent {
    ClutterEventType type;
    guint32 time;
    ClutterEventFlags flags;
    ClutterStage *stage;
    ClutterActor *source;

    gfloat x;
    gfloat y;
    ClutterModifierType modifier_state;
    guint32 button;
    guint click_count;
    gdouble *axes;
    ClutterInputDevice *device;
}


/+
 + ClutterCairoTexture
 +/
struct ClutterCairoTexture;

struct ClutterCairoTextureClass{}


/+
 + ClutterCallback
 +/
alias void function( ClutterActor *actor, gpointer data ) ClutterCallback;


/+
 + ClutterChildMeta
 +/
struct ClutterChildMeta {
     ClutterContainer *container;
     ClutterActor *actor;
}

struct ClutterChildMetaClass {}


/+
 + ClutterClone
 +/
struct ClutterClone;

struct ClutterCloneClass {}


/+
 + ClutterColor
 +/
struct ClutterColor {
    guint8 red;
    guint8 green;
    guint8 blue;

    guint8 alpha;
}


/+
 + ClutterContainer
 +/
struct ClutterContainer;

struct ClutterContainerIface {
    void function( ClutterContainer *container,
		   ClutterActor *actor ) add;
    void function( ClutterContainer *container,
		   ClutterActor *actor ) remove;
    /*void function( ClutterContainer *container,
		   ClutterCallback callback,
		   gpointer user_data ) foreach;*/
    void function( ClutterContainer *container,
		   ClutterCallback callback,
		   gpointer user_data ) foreach_with_internals;

    /* child stacking */
    void function( ClutterContainer *container,
		   ClutterActor *actor,
		   ClutterActor *sibling ) raise;
    void function( ClutterContainer *container,
		   ClutterActor *actor,
		   ClutterActor *sibling ) lower;
    void function( ClutterContainer *container ) sort_depth_order;

    /* ClutterChildMeta management */
    GType child_meta_type;
    void function( ClutterContainer *container,
		   ClutterActor *actor) create_child_meta;
    void function( ClutterContainer *container,
		   ClutterActor *actor) destroy_child_meta;
    ClutterChildMeta* function( ClutterContainer *container,
				ClutterActor *actor ) get_child_meta;

    /* signals */
    void function( ClutterContainer *container,
		   ClutterActor *actor) actor_added;
    void function( ClutterContainer *container,
		   ClutterActor *actor) actor_removed;

    void function( ClutterContainer *container,
		   ClutterActor *actor,
		   GParamSpec *pspec) child_notify;
}


/+
 + ClutterCrossingEvent
 +/
struct ClutterCrossingEvent {
    ClutterEventType type;
    guint32 time;
    ClutterEventFlags flags;
    ClutterStage *stage;
    ClutterActor *source;

    gfloat x;
    gfloat y;
    ClutterInputDevice *device;
    ClutterActor *related;
}


/+
 + ClutterEvent
 +/

union ClutterEvent {
    ClutterEventType type;

    ClutterAnyEvent any;
    ClutterButtonEvent button;
    ClutterKeyEvent key;
    ClutterMotionEvent motion;
    ClutterScrollEvent scroll;
    ClutterStageStateEvent stage_state;
    ClutterCrossingEvent crossing;
}


/+
 + ClutterFog
 +/
struct ClutterFog {
    gfloat z_near;
    gfloat z_far;
}


/+
 + ClutterGeometry
 +/
struct ClutterGeometry {
    gint x;
    gint y;
    guint width;
    guint height;
}


/+
 + ClutterGLXTexturePixmap
 +/
struct ClutterGLXTexturePixmapPrivate;

struct ClutterGLXTexturePixmap {
    ClutterX11TexturePixmap parent;
    ClutterGLXTexturePixmapPrivate *priv;
}

struct ClutterGLXTexturePixmapClass {
    ClutterX11TexturePixmapClass parent_class;
}


/+
 + ClutterGroup
 +/
struct ClutterGroup;

struct ClutterGroupClass {}


/+
 + ClutterInputDevice
 +/
struct ClutterInputDevice;


/+
 + ClutterInterval
 +/
struct ClutterInterval {}

struct ClutterIntervalClass {
    gboolean function(ClutterInterval *interval,
		      GParamSpec *pspec) validate;
    gboolean function(ClutterInterval *interval,
		      gdouble factor,
		      GValue *value) compute_value;
}


/+
 + ClutterKeyEvent
 +/
struct ClutterKeyEvent {
    ClutterEventType type;
    guint32 time;
    ClutterEventFlags flags;
    ClutterStage *stage;
    ClutterActor *source;

    ClutterModifierType modifier_state;
    guint keyval;
    guint16 hardware_keycode;
    gunichar unicode_value;
    ClutterInputDevice *device;
}


/+
 + ClutterKnot
 +/
struct ClutterKnot {
    gint x;
    gint y;
}


/+
 + ClutterListModel
 +/
struct ClutterListModel;

struct ClutterListModelClass {}


/+
 + ClutterMedia
 +/
struct ClutterMedia;

struct ClutterMediaIface {}


/+
 + ClutterModel
 +/
struct ClutterModel;

struct ClutterModelClass {
    /* vtable */
    guint function( ClutterModel *model ) get_n_rows;
    guint function( ClutterModel *model ) get_n_columns;
    gchar* function( ClutterModel *model,
		     guint column ) get_column_name;
    GType function( ClutterModel *model,
		    guint column ) get_column_type;
    ClutterModelIter* function( ClutterModel *model,
			        gint index_ ) insert_row;
    void function( ClutterModel *model,
		   guint row ) remove_row;
    ClutterModelIter* function( ClutterModel *model,
			        guint row ) get_iter_at_row;
    void function( ClutterModel *model,
		   ClutterModelSortFunc func,
		   gpointer data) resort;

    /* signals */
    void function( ClutterModel *model,
		   ClutterModelIter *iter) row_added;
    void function( ClutterModel *model,
		   ClutterModelIter *iter) row_removed;
    void function( ClutterModel *model,
		   ClutterModelIter *iter) row_changed;
    void function( ClutterModel *model) sort_changed;
    void function( ClutterModel *model) filter_changed;
}


/+
 + ClutterModelFilterFunc
 +/
alias gboolean function( ClutterModel *model,
			 ClutterModelIter *iter,
			 gpointer user_data) ClutterModelFilterFunc;


/+
 + ClutterModelForeachFunc
 +/
alias gboolean function( ClutterModel *model,
			 ClutterModelIter *iter,
			 gpointer user_data) ClutterModelForeachFunc;


/+
 + ClutterModelIter
 +/
struct ClutterModelIter;

struct ClutterModelIterClass {
    /* vtable not signals */
    void function( ClutterModelIter *iter, 
		   guint column, 
		   GValue *value ) get_value;
    void function( ClutterModelIter *iter, 
		      guint column, 
		      GValue *value) set_value;

    gboolean function( ClutterModelIter *iter ) is_first;
    gboolean function( ClutterModelIter *iter ) is_last;

    ClutterModelIter* function( ClutterModelIter *iter ) next;
    ClutterModelIter* function( ClutterModelIter *iter ) prev;

    ClutterModel* function( ClutterModelIter *iter ) get_model;
    guint function( ClutterModelIter *iter ) get_row;

    ClutterModelIter* function( ClutterModelIter *iter ) copy;
}


/+
 + ClutterModelSortFunc
 +/
alias gint function( ClutterModel *model,
                     GValue *a,
		     GValue *b,
                     gpointer user_data ) ClutterModelSortFunc;


/+
 + ClutterMotionEvent
 +/
struct ClutterMotionEvent {
    ClutterEventType type;
    guint32 time;
    ClutterEventFlags flags;
    ClutterStage *stage;
    ClutterActor *source;

    gfloat x;
    gfloat y;
    ClutterModifierType modifier_state;
    gdouble *axes; /* Future use */
    ClutterInputDevice *device;
}


/+
 + ClutterParamSpec{*}
 +/
struct ClutterParamSpecColor {
    ClutterColor *default_value;
}

struct ClutterParamSpecFixed {
    CoglFixed minimum;
    CoglFixed maximum;
    CoglFixed default_value;
}

struct ClutterParamSpecUnits {
    ClutterUnitType default_type;

    gfloat default_value;
    gfloat minimum;
    gfloat maximum;
}


/+
 + ClutterPath
 +/
struct ClutterPath;

struct ClutterPathClass {}


/+
 + ClutterPathCallback
 +/
alias void function( ClutterPathNode *node, gpointer data ) ClutterPathCallback;


/+
 + ClutterPathNode
 +/
struct ClutterPathNode {
    ClutterPathNodeType type;

    ClutterKnot points[3];
}


/+
 + ClutterPerspective
 +/
struct ClutterPerspective {
    gfloat fovy;
    gfloat aspect;
    gfloat z_near;
    gfloat z_far;
}


/+
 + ClutterProgressFunc
 +/
alias gboolean function( GValue *a,
			 GValue *b,
			 gdouble progress,
			 GValue *retval ) ClutterProgressFunc;


/+
 + ClutterRectangle
 +/
struct ClutterRectangle;

struct ClutterRectangleClass {}


/+
 + ClutterScore
 +/
struct ClutterScore;

struct ClutterScoreClass {
    void function( ClutterScore *score,
		   ClutterTimeline *timeline ) timeline_started;
    void function( ClutterScore *score,
		   ClutterTimeline *timeline ) timeline_completed;

    void function( ClutterScore *score ) started;
    void function( ClutterScore *score ) completed;
    void function( ClutterScore *score) paused;
}


/+
 + ClutterScript
 +/
struct ClutterScript;

struct ClutterScriptClass {
    GType function( ClutterScript *script,
                    gchar *type_name ) get_type_from_name;
}


/+
 + ClutterScriptable
 +/
struct JsonNode;

struct ClutterScriptable;

struct ClutterScriptableIface {
    void function( ClutterScriptable *scriptable,
		   gchar *name ) set_id;
    gchar* function( ClutterScriptable *scriptable ) get_id;

    gboolean function( ClutterScriptable *scriptable,
		       ClutterScript *script,
		       GValue *value,
		       gchar *name,
		       JsonNode *node ) parse_custom_node;
    void function( ClutterScriptable *scriptable,
		   ClutterScript *script,
		   gchar *name,
		   GValue *value ) set_custom_property;
}


/+
 + ClutterScriptConnectFunc
 +/
alias void function( ClutterScript *script,
		     GObject *object,
		     gchar *signal_name,
		     gchar *handler_name,
		     GObject *connect_object,
		     GConnectFlags flags,
		     gpointer user_data ) ClutterScriptConnectFunc;


/+
 + ClutterScrollEvent
 +/
struct ClutterScrollEvent {
    ClutterEventType type;
    guint32 time;
    ClutterEventFlags flags;
    ClutterStage *stage;
    ClutterActor *source;

    gfloat x;
    gfloat y;
    ClutterScrollDirection direction;
    ClutterModifierType modifier_state;
    gdouble *axes; /* future use */
    ClutterInputDevice *device;
}


/+
 + ClutterShader
 +/
struct ClutterShader;

struct ClutterShaderClass {}


/+
 + ClutterStage
 +/
struct ClutterStage;

struct ClutterStageClass {
  /* signals */
    void function( ClutterStage *stage ) fullscreen;
    void function( ClutterStage *stage ) unfullscreen;
    void function( ClutterStage *stage ) activate;
    void function( ClutterStage *stage ) deactivate;
}


/+
 + ClutterStageStateEvent
 +/
struct ClutterStageStateEvent {
    ClutterEventType type;
    guint32 time;
    ClutterEventFlags flags;
    ClutterStage *stage;
    ClutterActor *source; /* XXX: should probably be the stage itself */

    ClutterStageState changed_mask;
    ClutterStageState new_state;
}


/+
 + ClutterText
 +/
struct ClutterText;

struct ClutterTextClass {
    /* signals, not vfuncs */
    void function( ClutterText *self ) text_changed;
    void function( ClutterText *self ) activate ;
    void function( ClutterText *self,
		   ClutterGeometry *geometry) cursor_event;
}


/+
 + ClutterTexture
 +/
struct ClutterTexture;

struct ClutterTextureClass {
    void function( ClutterTexture *texture,
		   gint width,
		   gint height ) size_change;
    void function( ClutterTexture *texture ) pixbuf_change;
    void function( ClutterTexture *texture,
		   GError *error) load_finished;
}


/+
 + ClutterTimeline
 +/
struct ClutterTimeline;

struct ClutterTimelineClass {
    void function( ClutterTimeline *timeline ) started;
    void function( ClutterTimeline *timeline ) completed;
    void function( ClutterTimeline *timeline ) paused;

    void function( ClutterTimeline *timeline,
		   gint frame_num) new_frame;

    void function( ClutterTimeline *timeline,
		   gchar *marker_name,
		   gint frame_num) marker_reached;
}


/+
 + ClutterTimeout
 +/
struct ClutterTimeoutPool;


/+
 + ClutterUnits
 +/
struct ClutterUnits {}


/+
 + ClutterVertex
 +/
struct ClutterVertex {
    gfloat x;
    gfloat y;
    gfloat z;
}


/+
 + ClutterX11TexturePixmap
 +/
struct ClutterX11TexturePixmap {}

struct ClutterX11TexturePixmapClass {
    ClutterTextureClass parent_class;

    void function( ClutterX11TexturePixmap *texture,
		   gint x,
		   gint y,
		   gint width,
		   gint height) update_area;
}


/+
 + ClutterX11XInputDevice
 +/
struct ClutterX11XInputDevice;

enum ClutterX11XInputEventTypes {
    CLUTTER_X11_XINPUT_KEY_PRESS_EVENT = 0,
    CLUTTER_X11_XINPUT_KEY_RELEASE_EVENT,
    CLUTTER_X11_XINPUT_BUTTON_PRESS_EVENT,
    CLUTTER_X11_XINPUT_BUTTON_RELEASE_EVENT,
    CLUTTER_X11_XINPUT_MOTION_NOTIFY_EVENT,
    CLUTTER_X11_XINPUT_LAST_EVENT
}

