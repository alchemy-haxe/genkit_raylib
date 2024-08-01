@:structAccess
@:unreflective
@:include("raylib.h")
extern class Camera2D {
    public var offset: Vector2;
    public var target: Vector2;
    public var rotation: Float;
    public var zoom: Float;
    /**
     * Camera2D, defines position/orientation in 2d space
     * @return cpp: Camera2D
     */
    static inline function create(offset: Vector2, target: Vector2, rotation: Float, zoom: Float): Camera2D {
        return untyped __cpp__("{ (Vector2){0}, (Vector2){1}, (float){2}, (float){3} }", offset, target, rotation, zoom);
    }
    
}
