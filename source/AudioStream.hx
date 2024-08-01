@:structAccess
@:unreflective
@:include("raylib.h")
extern class AudioStream {
    public var buffer: cpp.Void;
    public var processor: cpp.Void;
    public var sampleRate: cpp.UInt32;
    public var sampleSize: cpp.UInt32;
    public var channels: cpp.UInt32;
    /**
     * AudioStream, custom audio stream
     * @return cpp: AudioStream
     */
    static inline function create(buffer: cpp.Void, processor: cpp.Void, sampleRate: cpp.UInt32, sampleSize: cpp.UInt32, channels: cpp.UInt32): AudioStream {
        return untyped __cpp__("{ (rAudioBuffer *){0}, (rAudioProcessor *){1}, (unsigned int){2}, (unsigned int){3}, (unsigned int){4} }", buffer, processor, sampleRate, sampleSize, channels);
    }
    
}
