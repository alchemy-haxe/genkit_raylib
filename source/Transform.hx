@:structAccess
@:unreflective
@:include("raylib.h")
extern class Transform {
    public var translation: Vector3;
    public var rotation: Vector4;
    public var scale: Vector3;
    /**
     * Transform, vertex transformation data
     * @return cpp: Transform
     */
    static inline function create(translation: Vector3, rotation: Vector4, scale: Vector3): Transform {
        return untyped __cpp__("{ (Vector3){0}, (Quaternion){1}, (Vector3){2} }", translation, rotation, scale);
    }
    
}
