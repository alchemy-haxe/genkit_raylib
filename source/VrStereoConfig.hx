@:structAccess
@:unreflective
@:include("raylib.h")
extern class VrStereoConfig {
    public var projection: cpp.Pointer<Matrix>;
    public var viewOffset: cpp.Pointer<Matrix>;
    public var leftLensCenter: cpp.Pointer<Float>;
    public var rightLensCenter: cpp.Pointer<Float>;
    public var leftScreenCenter: cpp.Pointer<Float>;
    public var rightScreenCenter: cpp.Pointer<Float>;
    public var scale: cpp.Pointer<Float>;
    public var scaleIn: cpp.Pointer<Float>;
    /**
     * VrStereoConfig, VR stereo rendering configuration for simulator
     * @return cpp: VrStereoConfig
     */
    static inline function create(projection: cpp.Pointer<Matrix>, viewOffset: cpp.Pointer<Matrix>, leftLensCenter: cpp.Pointer<Float>, rightLensCenter: cpp.Pointer<Float>, leftScreenCenter: cpp.Pointer<Float>, rightScreenCenter: cpp.Pointer<Float>, scale: cpp.Pointer<Float>, scaleIn: cpp.Pointer<Float>): VrStereoConfig {
        return untyped __cpp__("{ (Matrix[2]){0}, (Matrix[2]){1}, (float[2]){2}, (float[2]){3}, (float[2]){4}, (float[2]){5}, (float[2]){6}, (float[2]){7} }", projection, viewOffset, leftLensCenter, rightLensCenter, leftScreenCenter, rightScreenCenter, scale, scaleIn);
    }
    
}
