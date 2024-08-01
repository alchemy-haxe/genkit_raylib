@:structAccess
@:unreflective
@:include("raylib.h")
extern class FilePathList {
    public var capacity: cpp.UInt32;
    public var count: cpp.UInt32;
    public var paths: String;
    /**
     * File path list
     * @return cpp: FilePathList
     */
    static inline function create(capacity: cpp.UInt32, count: cpp.UInt32, paths: String): FilePathList {
        return untyped __cpp__("{ (unsigned int){0}, (unsigned int){1}, (char **){2} }", capacity, count, paths);
    }
    
}
