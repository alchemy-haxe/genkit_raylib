@:structAccess
@:unreflective
@:include("raylib.h")
extern class VrDeviceInfo {
    public var hResolution: Int;
    public var vResolution: Int;
    public var hScreenSize: Float;
    public var vScreenSize: Float;
    public var eyeToScreenDistance: Float;
    public var lensSeparationDistance: Float;
    public var interpupillaryDistance: Float;
    public var lensDistortionValues: cpp.Pointer<Float>;
    public var chromaAbCorrection: cpp.Pointer<Float>;
    /**
     * VrDeviceInfo, Head-Mounted-Display device parameters
     * @return cpp: VrDeviceInfo
     */
    static inline function create(hResolution: Int, vResolution: Int, hScreenSize: Float, vScreenSize: Float, eyeToScreenDistance: Float, lensSeparationDistance: Float, interpupillaryDistance: Float, lensDistortionValues: cpp.Pointer<Float>, chromaAbCorrection: cpp.Pointer<Float>): VrDeviceInfo {
        return untyped __cpp__("{ (int){0}, (int){1}, (float){2}, (float){3}, (float){4}, (float){5}, (float){6}, (float[4]){7}, (float[4]){8} }", hResolution, vResolution, hScreenSize, vScreenSize, eyeToScreenDistance, lensSeparationDistance, interpupillaryDistance, lensDistortionValues, chromaAbCorrection);
    }
    
}
