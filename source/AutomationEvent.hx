@:structAccess
@:unreflective
@:include("raylib.h")
extern class AutomationEvent {
    public var frame: cpp.UInt32;
    public var type: cpp.UInt32;
    public var params: cpp.Pointer<Int>;
    /**
     * Automation event
     * @return cpp: AutomationEvent
     */
    static inline function create(frame: cpp.UInt32, type: cpp.UInt32, params: cpp.Pointer<Int>): AutomationEvent {
        return untyped __cpp__("{ (unsigned int){0}, (unsigned int){1}, (int[4]){2} }", frame, type, params);
    }
    
}
