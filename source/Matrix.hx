@:structAccess
@:unreflective
@:include("raylib.h")
extern class Matrix {
    public var m0: Float;
    public var m4: Float;
    public var m8: Float;
    public var m12: Float;
    public var m1: Float;
    public var m5: Float;
    public var m9: Float;
    public var m13: Float;
    public var m2: Float;
    public var m6: Float;
    public var m10: Float;
    public var m14: Float;
    public var m3: Float;
    public var m7: Float;
    public var m11: Float;
    public var m15: Float;
    /**
     * Matrix, 4x4 components, column major, OpenGL style, right-handed
     * @return cpp: Matrix
     */
    static inline function create(m0: Float, m4: Float, m8: Float, m12: Float, m1: Float, m5: Float, m9: Float, m13: Float, m2: Float, m6: Float, m10: Float, m14: Float, m3: Float, m7: Float, m11: Float, m15: Float): Matrix {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3}, (float){4}, (float){5}, (float){6}, (float){7}, (float){8}, (float){9}, (float){10}, (float){11}, (float){12}, (float){13}, (float){14}, (float){15} }", m0, m4, m8, m12, m1, m5, m9, m13, m2, m6, m10, m14, m3, m7, m11, m15);
    }
    
}
