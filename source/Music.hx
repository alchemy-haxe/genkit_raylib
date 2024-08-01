@:structAccess
@:unreflective
@:include("raylib.h")
extern class Music {
    public var stream: AudioStream;
    public var frameCount: cpp.UInt32;
    public var looping: Bool;
    public var ctxType: Int;
    public var ctxData: cpp.RawPointer<Void>;
    /**
     * Music, audio stream, anything longer than ~10 seconds should be streamed
     * @return cpp: Music
     */
    static inline function create(stream: AudioStream, frameCount: cpp.UInt32, looping: Bool, ctxType: Int, ctxData: cpp.RawPointer<Void>): Music {
        return untyped __cpp__("{ (AudioStream){0}, (unsigned int){1}, (bool){2}, (int){3}, (void *){4} }", stream, frameCount, looping, ctxType, ctxData);
    }
    
}
