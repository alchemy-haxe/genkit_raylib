@:structAccess
@:unreflective
@:include("raylib.h")
extern class Rectangle {
    public var x: Float;
    public var y: Float;
    public var width: Float;
    public var height: Float;
    /**
     * Rectangle, 4 components
     * @return cpp: Rectangle
     */
    static inline function create(x: Float, y: Float, width: Float, height: Float): Rectangle {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3} }", x, y, width, height);
    }
    
}
