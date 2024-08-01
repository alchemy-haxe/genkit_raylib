@:structAccess
@:unreflective
@:include("raylib.h")
extern class Texture {
    public var id: cpp.UInt32;
    public var width: Int;
    public var height: Int;
    public var mipmaps: Int;
    public var format: Int;
    /**
     * Texture, tex data stored in GPU memory (VRAM)
     * @return cpp: Texture
     */
    static inline function create(id: cpp.UInt32, width: Int, height: Int, mipmaps: Int, format: Int): Texture {
        return untyped __cpp__("{ (unsigned int){0}, (int){1}, (int){2}, (int){3}, (int){4} }", id, width, height, mipmaps, format);
    }
    
}
