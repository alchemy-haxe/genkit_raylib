@:structAccess
@:unreflective
@:include("raylib.h")
extern class Vector4 {
    public var x: Float;
    public var y: Float;
    public var z: Float;
    public var w: Float;
    /**
     * Vector4, 4 components
     * @return cpp: Vector4
     */
    static inline function create(x: Float, y: Float, z: Float, w: Float): Vector4 {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3} }", x, y, z, w);
    }
    
}
