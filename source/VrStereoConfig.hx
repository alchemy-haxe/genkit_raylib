@:structAccess
@:unreflective
@:include("raylib.h")
extern class VrStereoConfig {
    public var projection: cpp.RawPointer<Matrix>;
    public var viewOffset: cpp.RawPointer<Matrix>;
    public var leftLensCenter: cpp.RawPointer<Float>;
    public var rightLensCenter: cpp.RawPointer<Float>;
    public var leftScreenCenter: cpp.RawPointer<Float>;
    public var rightScreenCenter: cpp.RawPointer<Float>;
    public var scale: cpp.RawPointer<Float>;
    public var scaleIn: cpp.RawPointer<Float>;
    /**
     * VrStereoConfig, VR stereo rendering configuration for simulator
     * @return cpp: VrStereoConfig
     */
    static inline function create(projection: cpp.RawPointer<Matrix>, viewOffset: cpp.RawPointer<Matrix>, leftLensCenter: cpp.RawPointer<Float>, rightLensCenter: cpp.RawPointer<Float>, leftScreenCenter: cpp.RawPointer<Float>, rightScreenCenter: cpp.RawPointer<Float>, scale: cpp.RawPointer<Float>, scaleIn: cpp.RawPointer<Float>): VrStereoConfig {
        return untyped __cpp__("{ (Matrix[2]){0}, (Matrix[2]){1}, (float[2]){2}, (float[2]){3}, (float[2]){4}, (float[2]){5}, (float[2]){6}, (float[2]){7} }", projection, viewOffset, leftLensCenter, rightLensCenter, leftScreenCenter, rightScreenCenter, scale, scaleIn);
    }
    
}
