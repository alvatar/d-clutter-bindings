
/+
 + Types of COGL library
 +
 + Author: Álvaro Castro-Castilla
 + Version: 1.0.2
 +/


module dclutter.cogl_types;

private import gtkc.gtktypes;
private import derelict.opengl.gltypes;

extern(C):

/++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 + CONSTANTS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/

const COGL_AFIRST_BIT = 1 << 6;

const COGL_A_BIT = 1 << 4;

const COGL_BGR_BIT = 1 << 5;

const COGL_FIXED_BITS = 32;

const COGL_FIXED_EPSILON = 1;

const COGL_FIXED_MAX = 0x7fffffff;

const COGL_FIXED_MIN = 0x80000000;

const COGL_FIXED_PI = 0x0003243f;

const COGL_FIXED_PI_2 = 0x00019220;

const COGL_FIXED_PI_4 = 0x0000c910;

const COGL_FIXED_Q = COGL_FIXED_BITS - 16;

const void  * COGL_INVALID_HANDLE = null;

const COGL_PIXEL_FORMAT_24 = 2;

const COGL_PIXEL_FORMAT_32 = 3;

const COGL_PREMULT_BIT = 1 << 7;

const COGL_RADIANS_TO_DEGREES = 0x394bb8;

const COGL_UNORDERED_MASK = 0x0F;

const COGL_UNPREMULT_MASK = 0x7F;


/++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 + ENUMS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/

enum CoglAttributeType {
    COGL_ATTRIBUTE_TYPE_BYTE = GL_BYTE,
    COGL_ATTRIBUTE_TYPE_UNSIGNED_BYTE = GL_UNSIGNED_BYTE,
    COGL_ATTRIBUTE_TYPE_SHORT = GL_SHORT,
    COGL_ATTRIBUTE_TYPE_UNSIGNED_SHORT = GL_UNSIGNED_SHORT,
    COGL_ATTRIBUTE_TYPE_FLOAT = GL_FLOAT
}

enum CoglBlendStringError {
    COGL_BLEND_STRING_ERROR_PARSE_ERROR,
    COGL_BLEND_STRING_ERROR_ARGUMENT_PARSE_ERROR,
    COGL_BLEND_STRING_ERROR_INVALID_ERROR,
    COGL_BLEND_STRING_ERROR_GPU_UNSUPPORTED_ERROR
}

enum CoglBufferBit {
    COGL_BUFFER_BIT_COLOR   = 1L<<0,
    COGL_BUFFER_BIT_DEPTH   = 1L<<1,
    COGL_BUFFER_BIT_STENCIL = 1L<<2
}

enum CoglBufferTarget {
    COGL_WINDOW_BUFFER      = (1 << 1),
    COGL_OFFSCREEN_BUFFER   = (1 << 2)
}

enum CoglFeatureFlags {
    COGL_FEATURE_TEXTURE_RECTANGLE      = (1 << 1),
    COGL_FEATURE_TEXTURE_NPOT           = (1 << 2),
    COGL_FEATURE_TEXTURE_YUV            = (1 << 3),
    COGL_FEATURE_TEXTURE_READ_PIXELS    = (1 << 4),
    COGL_FEATURE_SHADERS_GLSL           = (1 << 5),
    COGL_FEATURE_OFFSCREEN              = (1 << 6),
    COGL_FEATURE_OFFSCREEN_MULTISAMPLE  = (1 << 7),
    COGL_FEATURE_OFFSCREEN_BLIT         = (1 << 8),
    COGL_FEATURE_FOUR_CLIP_PLANES       = (1 << 9),
    COGL_FEATURE_STENCIL_BUFFER         = (1 << 10),
    COGL_FEATURE_VBOS		      = (1 << 11)
}

enum CoglFogMode {
    COGL_FOG_MODE_LINEAR,
    COGL_FOG_MODE_EXPONENTIAL,
    COGL_FOG_MODE_EXPONENTIAL_SQUARED
}

enum CoglIndicesType {
    COGL_INDICES_TYPE_UNSIGNED_BYTE,
    COGL_INDICES_TYPE_UNSIGNED_SHORT,
}

enum CoglMaterialAlphaFunc {
    COGL_MATERIAL_ALPHA_FUNC_NEVER    = GL_NEVER,
    COGL_MATERIAL_ALPHA_FUNC_LESS	    = GL_LESS,
    COGL_MATERIAL_ALPHA_FUNC_EQUAL    = GL_EQUAL,
    COGL_MATERIAL_ALPHA_FUNC_LEQUAL   = GL_LEQUAL,
    COGL_MATERIAL_ALPHA_FUNC_GREATER  = GL_GREATER,
    COGL_MATERIAL_ALPHA_FUNC_NOTEQUAL = GL_NOTEQUAL,
    COGL_MATERIAL_ALPHA_FUNC_GEQUAL   = GL_GEQUAL,
    COGL_MATERIAL_ALPHA_FUNC_ALWAYS   = GL_ALWAYS
}

enum CoglMaterialFilter {
    COGL_MATERIAL_FILTER_NEAREST = GL_NEAREST,
    COGL_MATERIAL_FILTER_LINEAR = GL_LINEAR,
    COGL_MATERIAL_FILTER_NEAREST_MIPMAP_NEAREST = GL_NEAREST_MIPMAP_NEAREST,
    COGL_MATERIAL_FILTER_LINEAR_MIPMAP_NEAREST = GL_LINEAR_MIPMAP_NEAREST,
    COGL_MATERIAL_FILTER_NEAREST_MIPMAP_LINEAR = GL_NEAREST_MIPMAP_LINEAR,
    COGL_MATERIAL_FILTER_LINEAR_MIPMAP_LINEAR = GL_LINEAR_MIPMAP_LINEAR
}

enum CoglPixelFormat {
    COGL_PIXEL_FORMAT_ANY           = 0,
    COGL_PIXEL_FORMAT_A_8           = 1 | COGL_A_BIT,

    COGL_PIXEL_FORMAT_RGB_565       = 4,
    COGL_PIXEL_FORMAT_RGBA_4444     = 5 | COGL_A_BIT,
    COGL_PIXEL_FORMAT_RGBA_5551     = 6 | COGL_A_BIT,
    COGL_PIXEL_FORMAT_YUV           = 7,
    COGL_PIXEL_FORMAT_G_8           = 8,

    COGL_PIXEL_FORMAT_RGB_888       =  COGL_PIXEL_FORMAT_24,
    COGL_PIXEL_FORMAT_BGR_888       = (COGL_PIXEL_FORMAT_24 | COGL_BGR_BIT),

    COGL_PIXEL_FORMAT_RGBA_8888     = (COGL_PIXEL_FORMAT_32 | COGL_A_BIT),
    COGL_PIXEL_FORMAT_BGRA_8888     = (COGL_PIXEL_FORMAT_32 | COGL_A_BIT | COGL_BGR_BIT),
    COGL_PIXEL_FORMAT_ARGB_8888     = (COGL_PIXEL_FORMAT_32 | COGL_A_BIT | COGL_AFIRST_BIT),
    COGL_PIXEL_FORMAT_ABGR_8888     = (COGL_PIXEL_FORMAT_32 | COGL_A_BIT | COGL_BGR_BIT | COGL_AFIRST_BIT),

    COGL_PIXEL_FORMAT_RGBA_8888_PRE = (COGL_PIXEL_FORMAT_32 | COGL_A_BIT | COGL_PREMULT_BIT),
    COGL_PIXEL_FORMAT_BGRA_8888_PRE = (COGL_PIXEL_FORMAT_32 | COGL_A_BIT | COGL_PREMULT_BIT | COGL_BGR_BIT),
    COGL_PIXEL_FORMAT_ARGB_8888_PRE = (COGL_PIXEL_FORMAT_32 | COGL_A_BIT | COGL_PREMULT_BIT | COGL_AFIRST_BIT),
    COGL_PIXEL_FORMAT_ABGR_8888_PRE = (COGL_PIXEL_FORMAT_32 | COGL_A_BIT | COGL_PREMULT_BIT | COGL_BGR_BIT | COGL_AFIRST_BIT),
    COGL_PIXEL_FORMAT_RGBA_4444_PRE = (COGL_PIXEL_FORMAT_RGBA_4444 | COGL_A_BIT | COGL_PREMULT_BIT),
    COGL_PIXEL_FORMAT_RGBA_5551_PRE = (COGL_PIXEL_FORMAT_RGBA_5551 | COGL_A_BIT | COGL_PREMULT_BIT),
}

enum CoglReadPixelsFlags {
    COGL_READ_PIXELS_COLOR_BUFFER = 1L << 0
}

enum CoglTextureFlags {
    COGL_TEXTURE_NONE           = 0,
    COGL_TEXTURE_NO_AUTO_MIPMAP = 1 << 0,
    COGL_TEXTURE_NO_SLICING     = 1 << 1
}


/++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 + ALIAS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/

alias gint32 CoglAngle;

alias gint32 CoglFixed;

alias gpointer CoglHandle;

/++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 + STRUCTS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/

struct CoglColor {}

struct CoglMatrix {}

struct CoglTextureVertex {
    float x, y, z;
    float tx, ty;
    CoglColor color;
}




