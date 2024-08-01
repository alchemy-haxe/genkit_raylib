@:structAccess
@:unreflective
@:include("raylib.h")
extern class BoundingBox {
    public var min: Vector3;
    public var max: Vector3;
    /**
     * BoundingBox
     * @return cpp: BoundingBox
     */
    static inline function create(min: Vector3, max: Vector3): BoundingBox {
        return untyped __cpp__("{ (Vector3){0}, (Vector3){1} }", min, max);
    }
    
}
