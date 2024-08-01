@:structAccess
@:unreflective
@:include("raylib.h")
extern class RayCollision {
    public var hit: Bool;
    public var distance: Float;
    public var point: Vector3;
    public var normal: Vector3;
    /**
     * RayCollision, ray hit information
     * @return cpp: RayCollision
     */
    static inline function create(hit: Bool, distance: Float, point: Vector3, normal: Vector3): RayCollision {
        return untyped __cpp__("{ (bool){0}, (float){1}, (Vector3){2}, (Vector3){3} }", hit, distance, point, normal);
    }
    
}
