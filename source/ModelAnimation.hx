@:structAccess
@:unreflective
@:include("raylib.h")
extern class ModelAnimation {
    public var boneCount: Int;
    public var frameCount: Int;
    public var bones: cpp.RawPointer<BoneInfo>;
    public var framePoses: cpp.RawPointer<Transform>;
    public var name: cpp.RawPointer<cpp.Char>;
    /**
     * ModelAnimation
     * @return cpp: ModelAnimation
     */
    static inline function create(boneCount: Int, frameCount: Int, bones: cpp.RawPointer<BoneInfo>, framePoses: cpp.RawPointer<Transform>, name: cpp.RawPointer<cpp.Char>): ModelAnimation {
        return untyped __cpp__("{ (int){0}, (int){1}, (BoneInfo *){2}, (Transform **){3}, (char[32]){4} }", boneCount, frameCount, bones, framePoses, name);
    }
    
}
