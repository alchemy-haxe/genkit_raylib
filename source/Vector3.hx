@:structAccess
@:unreflective
@:include("raylib.h")
extern class Vector3 {
    public var x: Float;
    public var y: Float;
    public var z: Float;
    /**
     * Vector3, 3 components
     * @return cpp: Vector3
     */
    static inline function create(x: Float, y: Float, z: Float): Vector3 {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2} }", x, y, z);
    }
    
}
