@:structAccess
@:unreflective
@:include("raylib.h")
extern class Color {
    public var r: cpp.UInt8;
    public var g: cpp.UInt8;
    public var b: cpp.UInt8;
    public var a: cpp.UInt8;
    /**
     * Color, 4 components, R8G8B8A8 (32bit)
     * @return cpp: Color
     */
    static inline function create(r: cpp.UInt8, g: cpp.UInt8, b: cpp.UInt8, a: cpp.UInt8): Color {
        return untyped __cpp__("{ (unsigned char){0}, (unsigned char){1}, (unsigned char){2}, (unsigned char){3} }", r, g, b, a);
    }
    
}
