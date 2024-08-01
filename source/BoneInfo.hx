@:structAccess
@:unreflective
@:include("raylib.h")
extern class BoneInfo {
    public var name: cpp.RawPointer<cpp.Char>;
    public var parent: Int;
    /**
     * Bone, skeletal animation bone
     * @return cpp: BoneInfo
     */
    static inline function create(name: cpp.RawPointer<cpp.Char>, parent: Int): BoneInfo {
        return untyped __cpp__("{ (char[32]){0}, (int){1} }", name, parent);
    }
    
}
