@:structAccess
@:unreflective
@:include("raylib.h")
extern class GlyphInfo {
    public var value: Int;
    public var offsetX: Int;
    public var offsetY: Int;
    public var advanceX: Int;
    public var image: Image;
    /**
     * GlyphInfo, font characters glyphs info
     * @return cpp: GlyphInfo
     */
    static inline function create(value: Int, offsetX: Int, offsetY: Int, advanceX: Int, image: Image): GlyphInfo {
        return untyped __cpp__("{ (int){0}, (int){1}, (int){2}, (int){3}, (Image){4} }", value, offsetX, offsetY, advanceX, image);
    }
    
}
