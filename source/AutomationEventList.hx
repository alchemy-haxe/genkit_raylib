@:structAccess
@:unreflective
@:include("raylib.h")
extern class AutomationEventList {
    public var capacity: cpp.UInt32;
    public var count: cpp.UInt32;
    public var events: cpp.RawPointer<AutomationEvent>;
    /**
     * Automation event list
     * @return cpp: AutomationEventList
     */
    static inline function create(capacity: cpp.UInt32, count: cpp.UInt32, events: cpp.RawPointer<AutomationEvent>): AutomationEventList {
        return untyped __cpp__("{ (unsigned int){0}, (unsigned int){1}, (AutomationEvent *){2} }", capacity, count, events);
    }
    
}
