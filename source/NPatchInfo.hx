@:structAccess
@:unreflective
@:include("raylib.h")
extern class NPatchInfo {
    public var source: Rectangle;
    public var left: Int;
    public var top: Int;
    public var right: Int;
    public var bottom: Int;
    public var layout: Int;
    /**
     * NPatchInfo, n-patch layout info
     * @return cpp: NPatchInfo
     */
    static inline function create(source: Rectangle, left: Int, top: Int, right: Int, bottom: Int, layout: Int): NPatchInfo {
        return untyped __cpp__("{ (Rectangle){0}, (int){1}, (int){2}, (int){3}, (int){4}, (int){5} }", source, left, top, right, bottom, layout);
    }
    
}
