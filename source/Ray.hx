@:structAccess
@:unreflective
@:include("raylib.h")
extern class Ray {
    public var position: Vector3;
    public var direction: Vector3;
    /**
     * Ray, ray for raycasting
     * @return cpp: Ray
     */
    static inline function create(position: Vector3, direction: Vector3): Ray {
        return untyped __cpp__("{ (Vector3){0}, (Vector3){1} }", position, direction);
    }
    
}
