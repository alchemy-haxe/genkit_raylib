@:structAccess
@:unreflective
@:include("raylib.h")
extern class Camera3D {
    public var position: Vector3;
    public var target: Vector3;
    public var up: Vector3;
    public var fovy: Float;
    public var projection: Int;
    /**
     * Camera, defines position/orientation in 3d space
     * @return cpp: Camera3D
     */
    static inline function create(position: Vector3, target: Vector3, up: Vector3, fovy: Float, projection: Int): Camera3D {
        return untyped __cpp__("{ (Vector3){0}, (Vector3){1}, (Vector3){2}, (float){3}, (int){4} }", position, target, up, fovy, projection);
    }
    
}
