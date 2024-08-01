@:structAccess
@:unreflective
@:include("raylib.h")
extern class Wave {
    public var frameCount: cpp.UInt32;
    public var sampleRate: cpp.UInt32;
    public var sampleSize: cpp.UInt32;
    public var channels: cpp.UInt32;
    public var data: cpp.Pointer<Void>;
    /**
     * Wave, audio wave data
     * @return cpp: Wave
     */
    static inline function create(frameCount: cpp.UInt32, sampleRate: cpp.UInt32, sampleSize: cpp.UInt32, channels: cpp.UInt32, data: cpp.Pointer<Void>): Wave {
        return untyped __cpp__("{ (unsigned int){0}, (unsigned int){1}, (unsigned int){2}, (unsigned int){3}, (void *){4} }", frameCount, sampleRate, sampleSize, channels, data);
    }
    
}
