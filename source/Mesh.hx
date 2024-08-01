@:structAccess
@:unreflective
@:include("raylib.h")
extern class Mesh {
    public var vertexCount: Int;
    public var triangleCount: Int;
    public var vertices: cpp.RawPointer<Float>;
    public var texcoords: cpp.RawPointer<Float>;
    public var texcoords2: cpp.RawPointer<Float>;
    public var normals: cpp.RawPointer<Float>;
    public var tangents: cpp.RawPointer<Float>;
    public var colors: cpp.RawPointer<cpp.UInt8>;
    public var indices: cpp.RawPointer<cpp.UInt16>;
    public var animVertices: cpp.RawPointer<Float>;
    public var animNormals: cpp.RawPointer<Float>;
    public var boneIds: cpp.RawPointer<cpp.UInt8>;
    public var boneWeights: cpp.RawPointer<Float>;
    public var vaoId: cpp.UInt32;
    public var vboId: cpp.RawPointer<cpp.UInt32>;
    /**
     * Mesh, vertex data and vao/vbo
     * @return cpp: Mesh
     */
    static inline function create(vertexCount: Int, triangleCount: Int, vertices: cpp.RawPointer<Float>, texcoords: cpp.RawPointer<Float>, texcoords2: cpp.RawPointer<Float>, normals: cpp.RawPointer<Float>, tangents: cpp.RawPointer<Float>, colors: cpp.RawPointer<cpp.UInt8>, indices: cpp.RawPointer<cpp.UInt16>, animVertices: cpp.RawPointer<Float>, animNormals: cpp.RawPointer<Float>, boneIds: cpp.RawPointer<cpp.UInt8>, boneWeights: cpp.RawPointer<Float>, vaoId: cpp.UInt32, vboId: cpp.RawPointer<cpp.UInt32>): Mesh {
        return untyped __cpp__("{ (int){0}, (int){1}, (float *){2}, (float *){3}, (float *){4}, (float *){5}, (float *){6}, (unsigned char *){7}, (unsigned short *){8}, (float *){9}, (float *){10}, (unsigned char *){11}, (float *){12}, (unsigned int){13}, (unsigned int *){14} }", vertexCount, triangleCount, vertices, texcoords, texcoords2, normals, tangents, colors, indices, animVertices, animNormals, boneIds, boneWeights, vaoId, vboId);
    }
    
}
