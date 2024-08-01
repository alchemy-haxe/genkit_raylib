@:structAccess
@:unreflective
@:include("raylib.h")
extern class Model {
    public var transform: Matrix;
    public var meshCount: Int;
    public var materialCount: Int;
    public var meshes: cpp.Pointer<Mesh>;
    public var materials: cpp.Pointer<Material>;
    public var meshMaterial: cpp.Pointer<Int>;
    public var boneCount: Int;
    public var bones: cpp.Pointer<BoneInfo>;
    public var bindPose: cpp.Pointer<Transform>;
    /**
     * Model, meshes, materials and animation data
     * @return cpp: Model
     */
    static inline function create(transform: Matrix, meshCount: Int, materialCount: Int, meshes: cpp.Pointer<Mesh>, materials: cpp.Pointer<Material>, meshMaterial: cpp.Pointer<Int>, boneCount: Int, bones: cpp.Pointer<BoneInfo>, bindPose: cpp.Pointer<Transform>): Model {
        return untyped __cpp__("{ (Matrix){0}, (int){1}, (int){2}, (Mesh *){3}, (Material *){4}, (int *){5}, (int){6}, (BoneInfo *){7}, (Transform *){8} }", transform, meshCount, materialCount, meshes, materials, meshMaterial, boneCount, bones, bindPose);
    }
    
}
