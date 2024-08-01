@:structAccess
@:unreflective
@:include("raylib.h")
extern class Shader {
    public var id: cpp.UInt32;
    public var locs: cpp.Pointer<Int>;
    /**
     * Shader
     * @return cpp: Shader
     */
    static inline function create(id: cpp.UInt32, locs: cpp.Pointer<Int>): Shader {
        return untyped __cpp__("{ (unsigned int){0}, (int *){1} }", id, locs);
    }
    
}
