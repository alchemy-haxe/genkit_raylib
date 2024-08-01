@:structAccess
@:unreflective
@:include("raylib.h")
extern class Mesh {
    public var vertexCount: Int;
    public var triangleCount: Int;
    public var vertices: cpp.Pointer<Float>;
    public var texcoords: cpp.Pointer<Float>;
    public var texcoords2: cpp.Pointer<Float>;
    public var normals: cpp.Pointer<Float>;
    public var tangents: cpp.Pointer<Float>;
    public var colors: cpp.Pointer<cpp.UInt8>;
    public var indices: cpp.Pointer<cpp.UInt16>;
    public var animVertices: cpp.Pointer<Float>;
    public var animNormals: cpp.Pointer<Float>;
    public var boneIds: cpp.Pointer<cpp.UInt8>;
    public var boneWeights: cpp.Pointer<Float>;
    public var vaoId: cpp.UInt32;
    public var vboId: cpp.Pointer<cpp.UInt32>;
    /**
     * Mesh, vertex data and vao/vbo
     * @return cpp: Mesh
     */
    static inline function create(vertexCount: Int, triangleCount: Int, vertices: cpp.Pointer<Float>, texcoords: cpp.Pointer<Float>, texcoords2: cpp.Pointer<Float>, normals: cpp.Pointer<Float>, tangents: cpp.Pointer<Float>, colors: cpp.Pointer<cpp.UInt8>, indices: cpp.Pointer<cpp.UInt16>, animVertices: cpp.Pointer<Float>, animNormals: cpp.Pointer<Float>, boneIds: cpp.Pointer<cpp.UInt8>, boneWeights: cpp.Pointer<Float>, vaoId: cpp.UInt32, vboId: cpp.Pointer<cpp.UInt32>): Mesh {
        return untyped __cpp__("{ (int){0}, (int){1}, (float *){2}, (float *){3}, (float *){4}, (float *){5}, (float *){6}, (unsigned char *){7}, (unsigned short *){8}, (float *){9}, (float *){10}, (unsigned char *){11}, (float *){12}, (unsigned int){13}, (unsigned int *){14} }", vertexCount, triangleCount, vertices, texcoords, texcoords2, normals, tangents, colors, indices, animVertices, animNormals, boneIds, boneWeights, vaoId, vboId);
    }
    
}
