@:structAccess
@:unreflective
@:include("raylib.h")
extern class MaterialMap {
    public var texture: Texture;
    public var color: Color;
    public var value: Float;
    /**
     * MaterialMap
     * @return cpp: MaterialMap
     */
    static inline function create(texture: Texture, color: Color, value: Float): MaterialMap {
        return untyped __cpp__("{ (Texture2D){0}, (Color){1}, (float){2} }", texture, color, value);
    }
    
}
