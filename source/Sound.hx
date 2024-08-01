@:structAccess
@:unreflective
@:include("raylib.h")
extern class Sound {
    public var stream: AudioStream;
    public var frameCount: cpp.UInt32;
    /**
     * Sound
     * @return cpp: Sound
     */
    static inline function create(stream: AudioStream, frameCount: cpp.UInt32): Sound {
        return untyped __cpp__("{ (AudioStream){0}, (unsigned int){1} }", stream, frameCount);
    }
    
}
