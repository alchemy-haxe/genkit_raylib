@:structAccess
@:unreflective
@:include("raylib.h")
extern class Vector2 {
    public var x: Float;
    public var y: Float;
    /**
     * Vector2, 2 components
     * @return cpp: Vector2
     */
    static inline function create(x: Float, y: Float): Vector2 {
        return untyped __cpp__("{ (float){0}, (float){1} }", x, y);
    }
    
}
