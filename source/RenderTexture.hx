@:structAccess
@:unreflective
@:include("raylib.h")
extern class RenderTexture {
    public var id: cpp.UInt32;
    public var texture: Texture;
    public var depth: Texture;
    /**
     * RenderTexture, fbo for texture rendering
     * @return cpp: RenderTexture
     */
    static inline function create(id: cpp.UInt32, texture: Texture, depth: Texture): RenderTexture {
        return untyped __cpp__("{ (unsigned int){0}, (Texture){1}, (Texture){2} }", id, texture, depth);
    }
    
}
