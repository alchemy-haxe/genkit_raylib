@:structAccess
@:unreflective
@:include("raylib.h")
extern class Image {
    public var data: cpp.Pointer<Void>;
    public var width: Int;
    public var height: Int;
    public var mipmaps: Int;
    public var format: Int;
    /**
     * Image, pixel data stored in CPU memory (RAM)
     * @return cpp: Image
     */
    static inline function create(data: cpp.Pointer<Void>, width: Int, height: Int, mipmaps: Int, format: Int): Image {
        return untyped __cpp__("{ (void *){0}, (int){1}, (int){2}, (int){3}, (int){4} }", data, width, height, mipmaps, format);
    }
    
}
