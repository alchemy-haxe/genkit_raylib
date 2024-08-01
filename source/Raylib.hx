@:unreflective
@:buildXml("<include name='${haxelib:genkit_raylib}/Build.xml'/>")
@:include("raylib.h")
extern class Raylib {
    @:native("LIGHTGRAY")
    static public var LIGHTGRAY: Color;
    @:native("GRAY")
    static public var GRAY: Color;
    @:native("DARKGRAY")
    static public var DARKGRAY: Color;
    @:native("YELLOW")
    static public var YELLOW: Color;
    @:native("GOLD")
    static public var GOLD: Color;
    @:native("ORANGE")
    static public var ORANGE: Color;
    @:native("PINK")
    static public var PINK: Color;
    @:native("RED")
    static public var RED: Color;
    @:native("MAROON")
    static public var MAROON: Color;
    @:native("GREEN")
    static public var GREEN: Color;
    @:native("LIME")
    static public var LIME: Color;
    @:native("DARKGREEN")
    static public var DARKGREEN: Color;
    @:native("SKYBLUE")
    static public var SKYBLUE: Color;
    @:native("BLUE")
    static public var BLUE: Color;
    @:native("DARKBLUE")
    static public var DARKBLUE: Color;
    @:native("PURPLE")
    static public var PURPLE: Color;
    @:native("VIOLET")
    static public var VIOLET: Color;
    @:native("DARKPURPLE")
    static public var DARKPURPLE: Color;
    @:native("BEIGE")
    static public var BEIGE: Color;
    @:native("BROWN")
    static public var BROWN: Color;
    @:native("DARKBROWN")
    static public var DARKBROWN: Color;
    @:native("WHITE")
    static public var WHITE: Color;
    @:native("BLACK")
    static public var BLACK: Color;
    @:native("BLANK")
    static public var BLANK: Color;
    @:native("MAGENTA")
    static public var MAGENTA: Color;
    @:native("RAYWHITE")
    static public var RAYWHITE: Color;
    /**
     * Initialize window and OpenGL context
     * @return cpp: void
     * @param width cpp: int
     * @param height cpp: int
     * @param title cpp: const char *
     */
    @:native("InitWindow")
    static function InitWindow(width: Int, height: Int, title: String): Void;
    
    /**
     * Close window and unload OpenGL context
     * @return cpp: void
     */
    @:native("CloseWindow")
    static function CloseWindow(): Void;
    
    /**
     * Check if application should close (KEY_ESCAPE pressed or windows close icon clicked)
     * @return cpp: bool
     */
    @:native("WindowShouldClose")
    static function WindowShouldClose(): Bool;
    
    /**
     * Check if window has been initialized successfully
     * @return cpp: bool
     */
    @:native("IsWindowReady")
    static function IsWindowReady(): Bool;
    
    /**
     * Check if window is currently fullscreen
     * @return cpp: bool
     */
    @:native("IsWindowFullscreen")
    static function IsWindowFullscreen(): Bool;
    
    /**
     * Check if window is currently hidden (only PLATFORM_DESKTOP)
     * @return cpp: bool
     */
    @:native("IsWindowHidden")
    static function IsWindowHidden(): Bool;
    
    /**
     * Check if window is currently minimized (only PLATFORM_DESKTOP)
     * @return cpp: bool
     */
    @:native("IsWindowMinimized")
    static function IsWindowMinimized(): Bool;
    
    /**
     * Check if window is currently maximized (only PLATFORM_DESKTOP)
     * @return cpp: bool
     */
    @:native("IsWindowMaximized")
    static function IsWindowMaximized(): Bool;
    
    /**
     * Check if window is currently focused (only PLATFORM_DESKTOP)
     * @return cpp: bool
     */
    @:native("IsWindowFocused")
    static function IsWindowFocused(): Bool;
    
    /**
     * Check if window has been resized last frame
     * @return cpp: bool
     */
    @:native("IsWindowResized")
    static function IsWindowResized(): Bool;
    
    /**
     * Check if one specific window flag is enabled
     * @return cpp: bool
     * @param flag cpp: unsigned int
     */
    @:native("IsWindowState")
    static function IsWindowState(flag: cpp.UInt32): Bool;
    
    /**
     * Set window configuration state using flags (only PLATFORM_DESKTOP)
     * @return cpp: void
     * @param flags cpp: unsigned int
     */
    @:native("SetWindowState")
    static function SetWindowState(flags: cpp.UInt32): Void;
    
    /**
     * Clear window configuration state flags
     * @return cpp: void
     * @param flags cpp: unsigned int
     */
    @:native("ClearWindowState")
    static function ClearWindowState(flags: cpp.UInt32): Void;
    
    /**
     * Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
     * @return cpp: void
     */
    @:native("ToggleFullscreen")
    static function ToggleFullscreen(): Void;
    
    /**
     * Toggle window state: borderless windowed (only PLATFORM_DESKTOP)
     * @return cpp: void
     */
    @:native("ToggleBorderlessWindowed")
    static function ToggleBorderlessWindowed(): Void;
    
    /**
     * Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
     * @return cpp: void
     */
    @:native("MaximizeWindow")
    static function MaximizeWindow(): Void;
    
    /**
     * Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
     * @return cpp: void
     */
    @:native("MinimizeWindow")
    static function MinimizeWindow(): Void;
    
    /**
     * Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
     * @return cpp: void
     */
    @:native("RestoreWindow")
    static function RestoreWindow(): Void;
    
    /**
     * Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
     * @return cpp: void
     * @param image cpp: Image
     */
    @:native("SetWindowIcon")
    static function SetWindowIcon(image: Image): Void;
    
    /**
     * Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
     * @return cpp: void
     * @param images cpp: Image *
     * @param count cpp: int
     */
    @:native("SetWindowIcons")
    static function SetWindowIcons(images: cpp.RawPointer<Image>, count: Int): Void;
    
    /**
     * Set title for window (only PLATFORM_DESKTOP and PLATFORM_WEB)
     * @return cpp: void
     * @param title cpp: const char *
     */
    @:native("SetWindowTitle")
    static function SetWindowTitle(title: String): Void;
    
    /**
     * Set window position on screen (only PLATFORM_DESKTOP)
     * @return cpp: void
     * @param x cpp: int
     * @param y cpp: int
     */
    @:native("SetWindowPosition")
    static function SetWindowPosition(x: Int, y: Int): Void;
    
    /**
     * Set monitor for the current window
     * @return cpp: void
     * @param monitor cpp: int
     */
    @:native("SetWindowMonitor")
    static function SetWindowMonitor(monitor: Int): Void;
    
    /**
     * Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
     * @return cpp: void
     * @param width cpp: int
     * @param height cpp: int
     */
    @:native("SetWindowMinSize")
    static function SetWindowMinSize(width: Int, height: Int): Void;
    
    /**
     * Set window maximum dimensions (for FLAG_WINDOW_RESIZABLE)
     * @return cpp: void
     * @param width cpp: int
     * @param height cpp: int
     */
    @:native("SetWindowMaxSize")
    static function SetWindowMaxSize(width: Int, height: Int): Void;
    
    /**
     * Set window dimensions
     * @return cpp: void
     * @param width cpp: int
     * @param height cpp: int
     */
    @:native("SetWindowSize")
    static function SetWindowSize(width: Int, height: Int): Void;
    
    /**
     * Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
     * @return cpp: void
     * @param opacity cpp: float
     */
    @:native("SetWindowOpacity")
    static function SetWindowOpacity(opacity: Float): Void;
    
    /**
     * Set window focused (only PLATFORM_DESKTOP)
     * @return cpp: void
     */
    @:native("SetWindowFocused")
    static function SetWindowFocused(): Void;
    
    /**
     * Get native window handle
     * @return cpp: void *
     */
    @:native("GetWindowHandle")
    static function GetWindowHandle(): cpp.RawPointer<Void>;
    
    /**
     * Get current screen width
     * @return cpp: int
     */
    @:native("GetScreenWidth")
    static function GetScreenWidth(): Int;
    
    /**
     * Get current screen height
     * @return cpp: int
     */
    @:native("GetScreenHeight")
    static function GetScreenHeight(): Int;
    
    /**
     * Get current render width (it considers HiDPI)
     * @return cpp: int
     */
    @:native("GetRenderWidth")
    static function GetRenderWidth(): Int;
    
    /**
     * Get current render height (it considers HiDPI)
     * @return cpp: int
     */
    @:native("GetRenderHeight")
    static function GetRenderHeight(): Int;
    
    /**
     * Get number of connected monitors
     * @return cpp: int
     */
    @:native("GetMonitorCount")
    static function GetMonitorCount(): Int;
    
    /**
     * Get current connected monitor
     * @return cpp: int
     */
    @:native("GetCurrentMonitor")
    static function GetCurrentMonitor(): Int;
    
    /**
     * Get specified monitor position
     * @return cpp: Vector2
     * @param monitor cpp: int
     */
    @:native("GetMonitorPosition")
    static function GetMonitorPosition(monitor: Int): Vector2;
    
    /**
     * Get specified monitor width (current video mode used by monitor)
     * @return cpp: int
     * @param monitor cpp: int
     */
    @:native("GetMonitorWidth")
    static function GetMonitorWidth(monitor: Int): Int;
    
    /**
     * Get specified monitor height (current video mode used by monitor)
     * @return cpp: int
     * @param monitor cpp: int
     */
    @:native("GetMonitorHeight")
    static function GetMonitorHeight(monitor: Int): Int;
    
    /**
     * Get specified monitor physical width in millimetres
     * @return cpp: int
     * @param monitor cpp: int
     */
    @:native("GetMonitorPhysicalWidth")
    static function GetMonitorPhysicalWidth(monitor: Int): Int;
    
    /**
     * Get specified monitor physical height in millimetres
     * @return cpp: int
     * @param monitor cpp: int
     */
    @:native("GetMonitorPhysicalHeight")
    static function GetMonitorPhysicalHeight(monitor: Int): Int;
    
    /**
     * Get specified monitor refresh rate
     * @return cpp: int
     * @param monitor cpp: int
     */
    @:native("GetMonitorRefreshRate")
    static function GetMonitorRefreshRate(monitor: Int): Int;
    
    /**
     * Get window position XY on monitor
     * @return cpp: Vector2
     */
    @:native("GetWindowPosition")
    static function GetWindowPosition(): Vector2;
    
    /**
     * Get window scale DPI factor
     * @return cpp: Vector2
     */
    @:native("GetWindowScaleDPI")
    static function GetWindowScaleDPI(): Vector2;
    
    /**
     * Get the human-readable, UTF-8 encoded name of the specified monitor
     * @return cpp: const char *
     * @param monitor cpp: int
     */
    @:native("GetMonitorName")
    static function GetMonitorName(monitor: Int): String;
    
    /**
     * Set clipboard text content
     * @return cpp: void
     * @param text cpp: const char *
     */
    @:native("SetClipboardText")
    static function SetClipboardText(text: String): Void;
    
    /**
     * Get clipboard text content
     * @return cpp: const char *
     */
    @:native("GetClipboardText")
    static function GetClipboardText(): String;
    
    /**
     * Enable waiting for events on EndDrawing(), no automatic event polling
     * @return cpp: void
     */
    @:native("EnableEventWaiting")
    static function EnableEventWaiting(): Void;
    
    /**
     * Disable waiting for events on EndDrawing(), automatic events polling
     * @return cpp: void
     */
    @:native("DisableEventWaiting")
    static function DisableEventWaiting(): Void;
    
    /**
     * Shows cursor
     * @return cpp: void
     */
    @:native("ShowCursor")
    static function ShowCursor(): Void;
    
    /**
     * Hides cursor
     * @return cpp: void
     */
    @:native("HideCursor")
    static function HideCursor(): Void;
    
    /**
     * Check if cursor is not visible
     * @return cpp: bool
     */
    @:native("IsCursorHidden")
    static function IsCursorHidden(): Bool;
    
    /**
     * Enables cursor (unlock cursor)
     * @return cpp: void
     */
    @:native("EnableCursor")
    static function EnableCursor(): Void;
    
    /**
     * Disables cursor (lock cursor)
     * @return cpp: void
     */
    @:native("DisableCursor")
    static function DisableCursor(): Void;
    
    /**
     * Check if cursor is on the screen
     * @return cpp: bool
     */
    @:native("IsCursorOnScreen")
    static function IsCursorOnScreen(): Bool;
    
    /**
     * Set background color (framebuffer clear color)
     * @return cpp: void
     * @param color cpp: Color
     */
    @:native("ClearBackground")
    static function ClearBackground(color: Color): Void;
    
    /**
     * Setup canvas (framebuffer) to start drawing
     * @return cpp: void
     */
    @:native("BeginDrawing")
    static function BeginDrawing(): Void;
    
    /**
     * End canvas drawing and swap buffers (double buffering)
     * @return cpp: void
     */
    @:native("EndDrawing")
    static function EndDrawing(): Void;
    
    /**
     * Begin 2D mode with custom camera (2D)
     * @return cpp: void
     * @param camera cpp: Camera2D
     */
    @:native("BeginMode2D")
    static function BeginMode2D(camera: Camera2D): Void;
    
    /**
     * Ends 2D mode with custom camera
     * @return cpp: void
     */
    @:native("EndMode2D")
    static function EndMode2D(): Void;
    
    /**
     * Begin 3D mode with custom camera (3D)
     * @return cpp: void
     * @param camera cpp: Camera3D
     */
    @:native("BeginMode3D")
    static function BeginMode3D(camera: Camera3D): Void;
    
    /**
     * Ends 3D mode and returns to default 2D orthographic mode
     * @return cpp: void
     */
    @:native("EndMode3D")
    static function EndMode3D(): Void;
    
    /**
     * Begin drawing to render texture
     * @return cpp: void
     * @param target cpp: RenderTexture2D
     */
    @:native("BeginTextureMode")
    static function BeginTextureMode(target: RenderTexture): Void;
    
    /**
     * Ends drawing to render texture
     * @return cpp: void
     */
    @:native("EndTextureMode")
    static function EndTextureMode(): Void;
    
    /**
     * Begin custom shader drawing
     * @return cpp: void
     * @param shader cpp: Shader
     */
    @:native("BeginShaderMode")
    static function BeginShaderMode(shader: Shader): Void;
    
    /**
     * End custom shader drawing (use default shader)
     * @return cpp: void
     */
    @:native("EndShaderMode")
    static function EndShaderMode(): Void;
    
    /**
     * Begin blending mode (alpha, additive, multiplied, subtract, custom)
     * @return cpp: void
     * @param mode cpp: int
     */
    @:native("BeginBlendMode")
    static function BeginBlendMode(mode: Int): Void;
    
    /**
     * End blending mode (reset to default: alpha blending)
     * @return cpp: void
     */
    @:native("EndBlendMode")
    static function EndBlendMode(): Void;
    
    /**
     * Begin scissor mode (define screen area for following drawing)
     * @return cpp: void
     * @param x cpp: int
     * @param y cpp: int
     * @param width cpp: int
     * @param height cpp: int
     */
    @:native("BeginScissorMode")
    static function BeginScissorMode(x: Int, y: Int, width: Int, height: Int): Void;
    
    /**
     * End scissor mode
     * @return cpp: void
     */
    @:native("EndScissorMode")
    static function EndScissorMode(): Void;
    
    /**
     * Begin stereo rendering (requires VR simulator)
     * @return cpp: void
     * @param config cpp: VrStereoConfig
     */
    @:native("BeginVrStereoMode")
    static function BeginVrStereoMode(config: VrStereoConfig): Void;
    
    /**
     * End stereo rendering (requires VR simulator)
     * @return cpp: void
     */
    @:native("EndVrStereoMode")
    static function EndVrStereoMode(): Void;
    
    /**
     * Load VR stereo config for VR simulator device parameters
     * @return cpp: VrStereoConfig
     * @param device cpp: VrDeviceInfo
     */
    @:native("LoadVrStereoConfig")
    static function LoadVrStereoConfig(device: VrDeviceInfo): VrStereoConfig;
    
    /**
     * Unload VR stereo config
     * @return cpp: void
     * @param config cpp: VrStereoConfig
     */
    @:native("UnloadVrStereoConfig")
    static function UnloadVrStereoConfig(config: VrStereoConfig): Void;
    
    /**
     * Load shader from files and bind default locations
     * @return cpp: Shader
     * @param vsFileName cpp: const char *
     * @param fsFileName cpp: const char *
     */
    @:native("LoadShader")
    static function LoadShader(vsFileName: String, fsFileName: String): Shader;
    
    /**
     * Load shader from code strings and bind default locations
     * @return cpp: Shader
     * @param vsCode cpp: const char *
     * @param fsCode cpp: const char *
     */
    @:native("LoadShaderFromMemory")
    static function LoadShaderFromMemory(vsCode: String, fsCode: String): Shader;
    
    /**
     * Check if a shader is ready
     * @return cpp: bool
     * @param shader cpp: Shader
     */
    @:native("IsShaderReady")
    static function IsShaderReady(shader: Shader): Bool;
    
    /**
     * Get shader uniform location
     * @return cpp: int
     * @param shader cpp: Shader
     * @param uniformName cpp: const char *
     */
    @:native("GetShaderLocation")
    static function GetShaderLocation(shader: Shader, uniformName: String): Int;
    
    /**
     * Get shader attribute location
     * @return cpp: int
     * @param shader cpp: Shader
     * @param attribName cpp: const char *
     */
    @:native("GetShaderLocationAttrib")
    static function GetShaderLocationAttrib(shader: Shader, attribName: String): Int;
    
    /**
     * Set shader uniform value
     * @return cpp: void
     * @param shader cpp: Shader
     * @param locIndex cpp: int
     * @param value cpp: const void *
     * @param uniformType cpp: int
     */
    @:native("SetShaderValue")
    static function SetShaderValue(shader: Shader, locIndex: Int, value: cpp.RawPointer<Void>, uniformType: Int): Void;
    
    /**
     * Set shader uniform value vector
     * @return cpp: void
     * @param shader cpp: Shader
     * @param locIndex cpp: int
     * @param value cpp: const void *
     * @param uniformType cpp: int
     * @param count cpp: int
     */
    @:native("SetShaderValueV")
    static function SetShaderValueV(shader: Shader, locIndex: Int, value: cpp.RawPointer<Void>, uniformType: Int, count: Int): Void;
    
    /**
     * Set shader uniform value (matrix 4x4)
     * @return cpp: void
     * @param shader cpp: Shader
     * @param locIndex cpp: int
     * @param mat cpp: Matrix
     */
    @:native("SetShaderValueMatrix")
    static function SetShaderValueMatrix(shader: Shader, locIndex: Int, mat: Matrix): Void;
    
    /**
     * Set shader uniform value for texture (sampler2d)
     * @return cpp: void
     * @param shader cpp: Shader
     * @param locIndex cpp: int
     * @param texture cpp: Texture2D
     */
    @:native("SetShaderValueTexture")
    static function SetShaderValueTexture(shader: Shader, locIndex: Int, texture: Texture): Void;
    
    /**
     * Unload shader from GPU memory (VRAM)
     * @return cpp: void
     * @param shader cpp: Shader
     */
    @:native("UnloadShader")
    static function UnloadShader(shader: Shader): Void;
    
    /**
     * Get a ray trace from screen position (i.e mouse)
     * @return cpp: Ray
     * @param position cpp: Vector2
     * @param camera cpp: Camera
     */
    @:native("GetScreenToWorldRay")
    static function GetScreenToWorldRay(position: Vector2, camera: Camera3D): Ray;
    
    /**
     * Get a ray trace from screen position (i.e mouse) in a viewport
     * @return cpp: Ray
     * @param position cpp: Vector2
     * @param camera cpp: Camera
     * @param width cpp: int
     * @param height cpp: int
     */
    @:native("GetScreenToWorldRayEx")
    static function GetScreenToWorldRayEx(position: Vector2, camera: Camera3D, width: Int, height: Int): Ray;
    
    /**
     * Get the screen space position for a 3d world space position
     * @return cpp: Vector2
     * @param position cpp: Vector3
     * @param camera cpp: Camera
     */
    @:native("GetWorldToScreen")
    static function GetWorldToScreen(position: Vector3, camera: Camera3D): Vector2;
    
    /**
     * Get size position for a 3d world space position
     * @return cpp: Vector2
     * @param position cpp: Vector3
     * @param camera cpp: Camera
     * @param width cpp: int
     * @param height cpp: int
     */
    @:native("GetWorldToScreenEx")
    static function GetWorldToScreenEx(position: Vector3, camera: Camera3D, width: Int, height: Int): Vector2;
    
    /**
     * Get the screen space position for a 2d camera world space position
     * @return cpp: Vector2
     * @param position cpp: Vector2
     * @param camera cpp: Camera2D
     */
    @:native("GetWorldToScreen2D")
    static function GetWorldToScreen2D(position: Vector2, camera: Camera2D): Vector2;
    
    /**
     * Get the world space position for a 2d camera screen space position
     * @return cpp: Vector2
     * @param position cpp: Vector2
     * @param camera cpp: Camera2D
     */
    @:native("GetScreenToWorld2D")
    static function GetScreenToWorld2D(position: Vector2, camera: Camera2D): Vector2;
    
    /**
     * Get camera transform matrix (view matrix)
     * @return cpp: Matrix
     * @param camera cpp: Camera
     */
    @:native("GetCameraMatrix")
    static function GetCameraMatrix(camera: Camera3D): Matrix;
    
    /**
     * Get camera 2d transform matrix
     * @return cpp: Matrix
     * @param camera cpp: Camera2D
     */
    @:native("GetCameraMatrix2D")
    static function GetCameraMatrix2D(camera: Camera2D): Matrix;
    
    /**
     * Set target FPS (maximum)
     * @return cpp: void
     * @param fps cpp: int
     */
    @:native("SetTargetFPS")
    static function SetTargetFPS(fps: Int): Void;
    
    /**
     * Get time in seconds for last frame drawn (delta time)
     * @return cpp: float
     */
    @:native("GetFrameTime")
    static function GetFrameTime(): Float;
    
    /**
     * Get elapsed time in seconds since InitWindow()
     * @return cpp: double
     */
    @:native("GetTime")
    static function GetTime(): Float;
    
    /**
     * Get current FPS
     * @return cpp: int
     */
    @:native("GetFPS")
    static function GetFPS(): Int;
    
    /**
     * Swap back buffer with front buffer (screen drawing)
     * @return cpp: void
     */
    @:native("SwapScreenBuffer")
    static function SwapScreenBuffer(): Void;
    
    /**
     * Register all input events
     * @return cpp: void
     */
    @:native("PollInputEvents")
    static function PollInputEvents(): Void;
    
    /**
     * Wait for some time (halt program execution)
     * @return cpp: void
     * @param seconds cpp: double
     */
    @:native("WaitTime")
    static function WaitTime(seconds: Float): Void;
    
    /**
     * Set the seed for the random number generator
     * @return cpp: void
     * @param seed cpp: unsigned int
     */
    @:native("SetRandomSeed")
    static function SetRandomSeed(seed: cpp.UInt32): Void;
    
    /**
     * Get a random value between min and max (both included)
     * @return cpp: int
     * @param min cpp: int
     * @param max cpp: int
     */
    @:native("GetRandomValue")
    static function GetRandomValue(min: Int, max: Int): Int;
    
    /**
     * Load random values sequence, no values repeated
     * @return cpp: int *
     * @param count cpp: unsigned int
     * @param min cpp: int
     * @param max cpp: int
     */
    @:native("LoadRandomSequence")
    static function LoadRandomSequence(count: cpp.UInt32, min: Int, max: Int): cpp.RawPointer<Int>;
    
    /**
     * Unload random values sequence
     * @return cpp: void
     * @param sequence cpp: int *
     */
    @:native("UnloadRandomSequence")
    static function UnloadRandomSequence(sequence: cpp.RawPointer<Int>): Void;
    
    /**
     * Takes a screenshot of current screen (filename extension defines format)
     * @return cpp: void
     * @param fileName cpp: const char *
     */
    @:native("TakeScreenshot")
    static function TakeScreenshot(fileName: String): Void;
    
    /**
     * Setup init configuration flags (view FLAGS)
     * @return cpp: void
     * @param flags cpp: unsigned int
     */
    @:native("SetConfigFlags")
    static function SetConfigFlags(flags: cpp.UInt32): Void;
    
    /**
     * Open URL with default system browser (if available)
     * @return cpp: void
     * @param url cpp: const char *
     */
    @:native("OpenURL")
    static function OpenURL(url: String): Void;
    
    /**
     * Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
     * @return cpp: void
     * @param logLevel cpp: int
     * @param text cpp: const char *
     * @param args cpp: ...
     */
    @:native("TraceLog")
    static function TraceLog(logLevel: Int, text: String, args: cpp.Void): Void;
    
    /**
     * Set the current threshold (minimum) log level
     * @return cpp: void
     * @param logLevel cpp: int
     */
    @:native("SetTraceLogLevel")
    static function SetTraceLogLevel(logLevel: Int): Void;
    
    /**
     * Internal memory allocator
     * @return cpp: void *
     * @param size cpp: unsigned int
     */
    @:native("MemAlloc")
    static function MemAlloc(size: cpp.UInt32): cpp.RawPointer<Void>;
    
    /**
     * Internal memory reallocator
     * @return cpp: void *
     * @param ptr cpp: void *
     * @param size cpp: unsigned int
     */
    @:native("MemRealloc")
    static function MemRealloc(ptr: cpp.RawPointer<Void>, size: cpp.UInt32): cpp.RawPointer<Void>;
    
    /**
     * Internal memory free
     * @return cpp: void
     * @param ptr cpp: void *
     */
    @:native("MemFree")
    static function MemFree(ptr: cpp.RawPointer<Void>): Void;
    
    /**
     * Set custom trace log
     * @return cpp: void
     * @param callback cpp: TraceLogCallback
     */
    @:native("SetTraceLogCallback")
    static function SetTraceLogCallback(callback: cpp.Void): Void;
    
    /**
     * Set custom file binary data loader
     * @return cpp: void
     * @param callback cpp: LoadFileDataCallback
     */
    @:native("SetLoadFileDataCallback")
    static function SetLoadFileDataCallback(callback: cpp.Void): Void;
    
    /**
     * Set custom file binary data saver
     * @return cpp: void
     * @param callback cpp: SaveFileDataCallback
     */
    @:native("SetSaveFileDataCallback")
    static function SetSaveFileDataCallback(callback: cpp.Void): Void;
    
    /**
     * Set custom file text data loader
     * @return cpp: void
     * @param callback cpp: LoadFileTextCallback
     */
    @:native("SetLoadFileTextCallback")
    static function SetLoadFileTextCallback(callback: cpp.Void): Void;
    
    /**
     * Set custom file text data saver
     * @return cpp: void
     * @param callback cpp: SaveFileTextCallback
     */
    @:native("SetSaveFileTextCallback")
    static function SetSaveFileTextCallback(callback: cpp.Void): Void;
    
    /**
     * Load file data as byte array (read)
     * @return cpp: unsigned char *
     * @param fileName cpp: const char *
     * @param dataSize cpp: int *
     */
    @:native("LoadFileData")
    static function LoadFileData(fileName: String, dataSize: cpp.RawPointer<Int>): cpp.RawPointer<cpp.UInt8>;
    
    /**
     * Unload file data allocated by LoadFileData()
     * @return cpp: void
     * @param data cpp: unsigned char *
     */
    @:native("UnloadFileData")
    static function UnloadFileData(data: cpp.RawPointer<cpp.UInt8>): Void;
    
    /**
     * Save data to file from byte array (write), returns true on success
     * @return cpp: bool
     * @param fileName cpp: const char *
     * @param data cpp: void *
     * @param dataSize cpp: int
     */
    @:native("SaveFileData")
    static function SaveFileData(fileName: String, data: cpp.RawPointer<Void>, dataSize: Int): Bool;
    
    /**
     * Export data to code (.h), returns true on success
     * @return cpp: bool
     * @param data cpp: const unsigned char *
     * @param dataSize cpp: int
     * @param fileName cpp: const char *
     */
    @:native("ExportDataAsCode")
    static function ExportDataAsCode(data: cpp.RawPointer<cpp.UInt8>, dataSize: Int, fileName: String): Bool;
    
    /**
     * Load text data from file (read), returns a '\0' terminated string
     * @return cpp: char *
     * @param fileName cpp: const char *
     */
    @:native("LoadFileText")
    static function LoadFileText(fileName: String): String;
    
    /**
     * Unload file text data allocated by LoadFileText()
     * @return cpp: void
     * @param text cpp: char *
     */
    @:native("UnloadFileText")
    static function UnloadFileText(text: String): Void;
    
    /**
     * Save text data to file (write), string must be '\0' terminated, returns true on success
     * @return cpp: bool
     * @param fileName cpp: const char *
     * @param text cpp: char *
     */
    @:native("SaveFileText")
    static function SaveFileText(fileName: String, text: String): Bool;
    
    /**
     * Check if file exists
     * @return cpp: bool
     * @param fileName cpp: const char *
     */
    @:native("FileExists")
    static function FileExists(fileName: String): Bool;
    
    /**
     * Check if a directory path exists
     * @return cpp: bool
     * @param dirPath cpp: const char *
     */
    @:native("DirectoryExists")
    static function DirectoryExists(dirPath: String): Bool;
    
    /**
     * Check file extension (including point: .png, .wav)
     * @return cpp: bool
     * @param fileName cpp: const char *
     * @param ext cpp: const char *
     */
    @:native("IsFileExtension")
    static function IsFileExtension(fileName: String, ext: String): Bool;
    
    /**
     * Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
     * @return cpp: int
     * @param fileName cpp: const char *
     */
    @:native("GetFileLength")
    static function GetFileLength(fileName: String): Int;
    
    /**
     * Get pointer to extension for a filename string (includes dot: '.png')
     * @return cpp: const char *
     * @param fileName cpp: const char *
     */
    @:native("GetFileExtension")
    static function GetFileExtension(fileName: String): String;
    
    /**
     * Get pointer to filename for a path string
     * @return cpp: const char *
     * @param filePath cpp: const char *
     */
    @:native("GetFileName")
    static function GetFileName(filePath: String): String;
    
    /**
     * Get filename string without extension (uses static string)
     * @return cpp: const char *
     * @param filePath cpp: const char *
     */
    @:native("GetFileNameWithoutExt")
    static function GetFileNameWithoutExt(filePath: String): String;
    
    /**
     * Get full path for a given fileName with path (uses static string)
     * @return cpp: const char *
     * @param filePath cpp: const char *
     */
    @:native("GetDirectoryPath")
    static function GetDirectoryPath(filePath: String): String;
    
    /**
     * Get previous directory path for a given path (uses static string)
     * @return cpp: const char *
     * @param dirPath cpp: const char *
     */
    @:native("GetPrevDirectoryPath")
    static function GetPrevDirectoryPath(dirPath: String): String;
    
    /**
     * Get current working directory (uses static string)
     * @return cpp: const char *
     */
    @:native("GetWorkingDirectory")
    static function GetWorkingDirectory(): String;
    
    /**
     * Get the directory of the running application (uses static string)
     * @return cpp: const char *
     */
    @:native("GetApplicationDirectory")
    static function GetApplicationDirectory(): String;
    
    /**
     * Change working directory, return true on success
     * @return cpp: bool
     * @param dir cpp: const char *
     */
    @:native("ChangeDirectory")
    static function ChangeDirectory(dir: String): Bool;
    
    /**
     * Check if a given path is a file or a directory
     * @return cpp: bool
     * @param path cpp: const char *
     */
    @:native("IsPathFile")
    static function IsPathFile(path: String): Bool;
    
    /**
     * Check if fileName is valid for the platform/OS
     * @return cpp: bool
     * @param fileName cpp: const char *
     */
    @:native("IsFileNameValid")
    static function IsFileNameValid(fileName: String): Bool;
    
    /**
     * Load directory filepaths
     * @return cpp: FilePathList
     * @param dirPath cpp: const char *
     */
    @:native("LoadDirectoryFiles")
    static function LoadDirectoryFiles(dirPath: String): FilePathList;
    
    /**
     * Load directory filepaths with extension filtering and recursive directory scan
     * @return cpp: FilePathList
     * @param basePath cpp: const char *
     * @param filter cpp: const char *
     * @param scanSubdirs cpp: bool
     */
    @:native("LoadDirectoryFilesEx")
    static function LoadDirectoryFilesEx(basePath: String, filter: String, scanSubdirs: Bool): FilePathList;
    
    /**
     * Unload filepaths
     * @return cpp: void
     * @param files cpp: FilePathList
     */
    @:native("UnloadDirectoryFiles")
    static function UnloadDirectoryFiles(files: FilePathList): Void;
    
    /**
     * Check if a file has been dropped into window
     * @return cpp: bool
     */
    @:native("IsFileDropped")
    static function IsFileDropped(): Bool;
    
    /**
     * Load dropped filepaths
     * @return cpp: FilePathList
     */
    @:native("LoadDroppedFiles")
    static function LoadDroppedFiles(): FilePathList;
    
    /**
     * Unload dropped filepaths
     * @return cpp: void
     * @param files cpp: FilePathList
     */
    @:native("UnloadDroppedFiles")
    static function UnloadDroppedFiles(files: FilePathList): Void;
    
    /**
     * Get file modification time (last write time)
     * @return cpp: long
     * @param fileName cpp: const char *
     */
    @:native("GetFileModTime")
    static function GetFileModTime(fileName: String): Int;
    
    /**
     * Compress data (DEFLATE algorithm), memory must be MemFree()
     * @return cpp: unsigned char *
     * @param data cpp: const unsigned char *
     * @param dataSize cpp: int
     * @param compDataSize cpp: int *
     */
    @:native("CompressData")
    static function CompressData(data: cpp.RawPointer<cpp.UInt8>, dataSize: Int, compDataSize: cpp.RawPointer<Int>): cpp.RawPointer<cpp.UInt8>;
    
    /**
     * Decompress data (DEFLATE algorithm), memory must be MemFree()
     * @return cpp: unsigned char *
     * @param compData cpp: const unsigned char *
     * @param compDataSize cpp: int
     * @param dataSize cpp: int *
     */
    @:native("DecompressData")
    static function DecompressData(compData: cpp.RawPointer<cpp.UInt8>, compDataSize: Int, dataSize: cpp.RawPointer<Int>): cpp.RawPointer<cpp.UInt8>;
    
    /**
     * Encode data to Base64 string, memory must be MemFree()
     * @return cpp: char *
     * @param data cpp: const unsigned char *
     * @param dataSize cpp: int
     * @param outputSize cpp: int *
     */
    @:native("EncodeDataBase64")
    static function EncodeDataBase64(data: cpp.RawPointer<cpp.UInt8>, dataSize: Int, outputSize: cpp.RawPointer<Int>): String;
    
    /**
     * Decode Base64 string data, memory must be MemFree()
     * @return cpp: unsigned char *
     * @param data cpp: const unsigned char *
     * @param outputSize cpp: int *
     */
    @:native("DecodeDataBase64")
    static function DecodeDataBase64(data: cpp.RawPointer<cpp.UInt8>, outputSize: cpp.RawPointer<Int>): cpp.RawPointer<cpp.UInt8>;
    
    /**
     * Load automation events list from file, NULL for empty list, capacity = MAX_AUTOMATION_EVENTS
     * @return cpp: AutomationEventList
     * @param fileName cpp: const char *
     */
    @:native("LoadAutomationEventList")
    static function LoadAutomationEventList(fileName: String): AutomationEventList;
    
    /**
     * Unload automation events list from file
     * @return cpp: void
     * @param list cpp: AutomationEventList
     */
    @:native("UnloadAutomationEventList")
    static function UnloadAutomationEventList(list: AutomationEventList): Void;
    
    /**
     * Export automation events list as text file
     * @return cpp: bool
     * @param list cpp: AutomationEventList
     * @param fileName cpp: const char *
     */
    @:native("ExportAutomationEventList")
    static function ExportAutomationEventList(list: AutomationEventList, fileName: String): Bool;
    
    /**
     * Set automation event list to record to
     * @return cpp: void
     * @param list cpp: AutomationEventList *
     */
    @:native("SetAutomationEventList")
    static function SetAutomationEventList(list: cpp.RawPointer<AutomationEventList>): Void;
    
    /**
     * Set automation event internal base frame to start recording
     * @return cpp: void
     * @param frame cpp: int
     */
    @:native("SetAutomationEventBaseFrame")
    static function SetAutomationEventBaseFrame(frame: Int): Void;
    
    /**
     * Start recording automation events (AutomationEventList must be set)
     * @return cpp: void
     */
    @:native("StartAutomationEventRecording")
    static function StartAutomationEventRecording(): Void;
    
    /**
     * Stop recording automation events
     * @return cpp: void
     */
    @:native("StopAutomationEventRecording")
    static function StopAutomationEventRecording(): Void;
    
    /**
     * Play a recorded automation event
     * @return cpp: void
     * @param event cpp: AutomationEvent
     */
    @:native("PlayAutomationEvent")
    static function PlayAutomationEvent(event: AutomationEvent): Void;
    
    /**
     * Check if a key has been pressed once
     * @return cpp: bool
     * @param key cpp: int
     */
    @:native("IsKeyPressed")
    static function IsKeyPressed(key: Int): Bool;
    
    /**
     * Check if a key has been pressed again (Only PLATFORM_DESKTOP)
     * @return cpp: bool
     * @param key cpp: int
     */
    @:native("IsKeyPressedRepeat")
    static function IsKeyPressedRepeat(key: Int): Bool;
    
    /**
     * Check if a key is being pressed
     * @return cpp: bool
     * @param key cpp: int
     */
    @:native("IsKeyDown")
    static function IsKeyDown(key: Int): Bool;
    
    /**
     * Check if a key has been released once
     * @return cpp: bool
     * @param key cpp: int
     */
    @:native("IsKeyReleased")
    static function IsKeyReleased(key: Int): Bool;
    
    /**
     * Check if a key is NOT being pressed
     * @return cpp: bool
     * @param key cpp: int
     */
    @:native("IsKeyUp")
    static function IsKeyUp(key: Int): Bool;
    
    /**
     * Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
     * @return cpp: int
     */
    @:native("GetKeyPressed")
    static function GetKeyPressed(): Int;
    
    /**
     * Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
     * @return cpp: int
     */
    @:native("GetCharPressed")
    static function GetCharPressed(): Int;
    
    /**
     * Set a custom key to exit program (default is ESC)
     * @return cpp: void
     * @param key cpp: int
     */
    @:native("SetExitKey")
    static function SetExitKey(key: Int): Void;
    
    /**
     * Check if a gamepad is available
     * @return cpp: bool
     * @param gamepad cpp: int
     */
    @:native("IsGamepadAvailable")
    static function IsGamepadAvailable(gamepad: Int): Bool;
    
    /**
     * Get gamepad internal name id
     * @return cpp: const char *
     * @param gamepad cpp: int
     */
    @:native("GetGamepadName")
    static function GetGamepadName(gamepad: Int): String;
    
    /**
     * Check if a gamepad button has been pressed once
     * @return cpp: bool
     * @param gamepad cpp: int
     * @param button cpp: int
     */
    @:native("IsGamepadButtonPressed")
    static function IsGamepadButtonPressed(gamepad: Int, button: Int): Bool;
    
    /**
     * Check if a gamepad button is being pressed
     * @return cpp: bool
     * @param gamepad cpp: int
     * @param button cpp: int
     */
    @:native("IsGamepadButtonDown")
    static function IsGamepadButtonDown(gamepad: Int, button: Int): Bool;
    
    /**
     * Check if a gamepad button has been released once
     * @return cpp: bool
     * @param gamepad cpp: int
     * @param button cpp: int
     */
    @:native("IsGamepadButtonReleased")
    static function IsGamepadButtonReleased(gamepad: Int, button: Int): Bool;
    
    /**
     * Check if a gamepad button is NOT being pressed
     * @return cpp: bool
     * @param gamepad cpp: int
     * @param button cpp: int
     */
    @:native("IsGamepadButtonUp")
    static function IsGamepadButtonUp(gamepad: Int, button: Int): Bool;
    
    /**
     * Get the last gamepad button pressed
     * @return cpp: int
     */
    @:native("GetGamepadButtonPressed")
    static function GetGamepadButtonPressed(): Int;
    
    /**
     * Get gamepad axis count for a gamepad
     * @return cpp: int
     * @param gamepad cpp: int
     */
    @:native("GetGamepadAxisCount")
    static function GetGamepadAxisCount(gamepad: Int): Int;
    
    /**
     * Get axis movement value for a gamepad axis
     * @return cpp: float
     * @param gamepad cpp: int
     * @param axis cpp: int
     */
    @:native("GetGamepadAxisMovement")
    static function GetGamepadAxisMovement(gamepad: Int, axis: Int): Float;
    
    /**
     * Set internal gamepad mappings (SDL_GameControllerDB)
     * @return cpp: int
     * @param mappings cpp: const char *
     */
    @:native("SetGamepadMappings")
    static function SetGamepadMappings(mappings: String): Int;
    
    /**
     * Set gamepad vibration for both motors
     * @return cpp: void
     * @param gamepad cpp: int
     * @param leftMotor cpp: float
     * @param rightMotor cpp: float
     */
    @:native("SetGamepadVibration")
    static function SetGamepadVibration(gamepad: Int, leftMotor: Float, rightMotor: Float): Void;
    
    /**
     * Check if a mouse button has been pressed once
     * @return cpp: bool
     * @param button cpp: int
     */
    @:native("IsMouseButtonPressed")
    static function IsMouseButtonPressed(button: Int): Bool;
    
    /**
     * Check if a mouse button is being pressed
     * @return cpp: bool
     * @param button cpp: int
     */
    @:native("IsMouseButtonDown")
    static function IsMouseButtonDown(button: Int): Bool;
    
    /**
     * Check if a mouse button has been released once
     * @return cpp: bool
     * @param button cpp: int
     */
    @:native("IsMouseButtonReleased")
    static function IsMouseButtonReleased(button: Int): Bool;
    
    /**
     * Check if a mouse button is NOT being pressed
     * @return cpp: bool
     * @param button cpp: int
     */
    @:native("IsMouseButtonUp")
    static function IsMouseButtonUp(button: Int): Bool;
    
    /**
     * Get mouse position X
     * @return cpp: int
     */
    @:native("GetMouseX")
    static function GetMouseX(): Int;
    
    /**
     * Get mouse position Y
     * @return cpp: int
     */
    @:native("GetMouseY")
    static function GetMouseY(): Int;
    
    /**
     * Get mouse position XY
     * @return cpp: Vector2
     */
    @:native("GetMousePosition")
    static function GetMousePosition(): Vector2;
    
    /**
     * Get mouse delta between frames
     * @return cpp: Vector2
     */
    @:native("GetMouseDelta")
    static function GetMouseDelta(): Vector2;
    
    /**
     * Set mouse position XY
     * @return cpp: void
     * @param x cpp: int
     * @param y cpp: int
     */
    @:native("SetMousePosition")
    static function SetMousePosition(x: Int, y: Int): Void;
    
    /**
     * Set mouse offset
     * @return cpp: void
     * @param offsetX cpp: int
     * @param offsetY cpp: int
     */
    @:native("SetMouseOffset")
    static function SetMouseOffset(offsetX: Int, offsetY: Int): Void;
    
    /**
     * Set mouse scaling
     * @return cpp: void
     * @param scaleX cpp: float
     * @param scaleY cpp: float
     */
    @:native("SetMouseScale")
    static function SetMouseScale(scaleX: Float, scaleY: Float): Void;
    
    /**
     * Get mouse wheel movement for X or Y, whichever is larger
     * @return cpp: float
     */
    @:native("GetMouseWheelMove")
    static function GetMouseWheelMove(): Float;
    
    /**
     * Get mouse wheel movement for both X and Y
     * @return cpp: Vector2
     */
    @:native("GetMouseWheelMoveV")
    static function GetMouseWheelMoveV(): Vector2;
    
    /**
     * Set mouse cursor
     * @return cpp: void
     * @param cursor cpp: int
     */
    @:native("SetMouseCursor")
    static function SetMouseCursor(cursor: Int): Void;
    
    /**
     * Get touch position X for touch point 0 (relative to screen size)
     * @return cpp: int
     */
    @:native("GetTouchX")
    static function GetTouchX(): Int;
    
    /**
     * Get touch position Y for touch point 0 (relative to screen size)
     * @return cpp: int
     */
    @:native("GetTouchY")
    static function GetTouchY(): Int;
    
    /**
     * Get touch position XY for a touch point index (relative to screen size)
     * @return cpp: Vector2
     * @param index cpp: int
     */
    @:native("GetTouchPosition")
    static function GetTouchPosition(index: Int): Vector2;
    
    /**
     * Get touch point identifier for given index
     * @return cpp: int
     * @param index cpp: int
     */
    @:native("GetTouchPointId")
    static function GetTouchPointId(index: Int): Int;
    
    /**
     * Get number of touch points
     * @return cpp: int
     */
    @:native("GetTouchPointCount")
    static function GetTouchPointCount(): Int;
    
    /**
     * Enable a set of gestures using flags
     * @return cpp: void
     * @param flags cpp: unsigned int
     */
    @:native("SetGesturesEnabled")
    static function SetGesturesEnabled(flags: cpp.UInt32): Void;
    
    /**
     * Check if a gesture have been detected
     * @return cpp: bool
     * @param gesture cpp: unsigned int
     */
    @:native("IsGestureDetected")
    static function IsGestureDetected(gesture: cpp.UInt32): Bool;
    
    /**
     * Get latest detected gesture
     * @return cpp: int
     */
    @:native("GetGestureDetected")
    static function GetGestureDetected(): Int;
    
    /**
     * Get gesture hold time in milliseconds
     * @return cpp: float
     */
    @:native("GetGestureHoldDuration")
    static function GetGestureHoldDuration(): Float;
    
    /**
     * Get gesture drag vector
     * @return cpp: Vector2
     */
    @:native("GetGestureDragVector")
    static function GetGestureDragVector(): Vector2;
    
    /**
     * Get gesture drag angle
     * @return cpp: float
     */
    @:native("GetGestureDragAngle")
    static function GetGestureDragAngle(): Float;
    
    /**
     * Get gesture pinch delta
     * @return cpp: Vector2
     */
    @:native("GetGesturePinchVector")
    static function GetGesturePinchVector(): Vector2;
    
    /**
     * Get gesture pinch angle
     * @return cpp: float
     */
    @:native("GetGesturePinchAngle")
    static function GetGesturePinchAngle(): Float;
    
    /**
     * Update camera position for selected mode
     * @return cpp: void
     * @param camera cpp: Camera *
     * @param mode cpp: int
     */
    @:native("UpdateCamera")
    static function UpdateCamera(camera: cpp.RawPointer<Camera3D>, mode: Int): Void;
    
    /**
     * Update camera movement/rotation
     * @return cpp: void
     * @param camera cpp: Camera *
     * @param movement cpp: Vector3
     * @param rotation cpp: Vector3
     * @param zoom cpp: float
     */
    @:native("UpdateCameraPro")
    static function UpdateCameraPro(camera: cpp.RawPointer<Camera3D>, movement: Vector3, rotation: Vector3, zoom: Float): Void;
    
    /**
     * Set texture and rectangle to be used on shapes drawing
     * @return cpp: void
     * @param texture cpp: Texture2D
     * @param source cpp: Rectangle
     */
    @:native("SetShapesTexture")
    static function SetShapesTexture(texture: Texture, source: Rectangle): Void;
    
    /**
     * Get texture that is used for shapes drawing
     * @return cpp: Texture2D
     */
    @:native("GetShapesTexture")
    static function GetShapesTexture(): Texture;
    
    /**
     * Get texture source rectangle that is used for shapes drawing
     * @return cpp: Rectangle
     */
    @:native("GetShapesTextureRectangle")
    static function GetShapesTextureRectangle(): Rectangle;
    
    /**
     * Draw a pixel
     * @return cpp: void
     * @param posX cpp: int
     * @param posY cpp: int
     * @param color cpp: Color
     */
    @:native("DrawPixel")
    static function DrawPixel(posX: Int, posY: Int, color: Color): Void;
    
    /**
     * Draw a pixel (Vector version)
     * @return cpp: void
     * @param position cpp: Vector2
     * @param color cpp: Color
     */
    @:native("DrawPixelV")
    static function DrawPixelV(position: Vector2, color: Color): Void;
    
    /**
     * Draw a line
     * @return cpp: void
     * @param startPosX cpp: int
     * @param startPosY cpp: int
     * @param endPosX cpp: int
     * @param endPosY cpp: int
     * @param color cpp: Color
     */
    @:native("DrawLine")
    static function DrawLine(startPosX: Int, startPosY: Int, endPosX: Int, endPosY: Int, color: Color): Void;
    
    /**
     * Draw a line (using gl lines)
     * @return cpp: void
     * @param startPos cpp: Vector2
     * @param endPos cpp: Vector2
     * @param color cpp: Color
     */
    @:native("DrawLineV")
    static function DrawLineV(startPos: Vector2, endPos: Vector2, color: Color): Void;
    
    /**
     * Draw a line (using triangles/quads)
     * @return cpp: void
     * @param startPos cpp: Vector2
     * @param endPos cpp: Vector2
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawLineEx")
    static function DrawLineEx(startPos: Vector2, endPos: Vector2, thick: Float, color: Color): Void;
    
    /**
     * Draw lines sequence (using gl lines)
     * @return cpp: void
     * @param points cpp: const Vector2 *
     * @param pointCount cpp: int
     * @param color cpp: Color
     */
    @:native("DrawLineStrip")
    static function DrawLineStrip(points: cpp.RawPointer<Vector2>, pointCount: Int, color: Color): Void;
    
    /**
     * Draw line segment cubic-bezier in-out interpolation
     * @return cpp: void
     * @param startPos cpp: Vector2
     * @param endPos cpp: Vector2
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawLineBezier")
    static function DrawLineBezier(startPos: Vector2, endPos: Vector2, thick: Float, color: Color): Void;
    
    /**
     * Draw a color-filled circle
     * @return cpp: void
     * @param centerX cpp: int
     * @param centerY cpp: int
     * @param radius cpp: float
     * @param color cpp: Color
     */
    @:native("DrawCircle")
    static function DrawCircle(centerX: Int, centerY: Int, radius: Float, color: Color): Void;
    
    /**
     * Draw a piece of a circle
     * @return cpp: void
     * @param center cpp: Vector2
     * @param radius cpp: float
     * @param startAngle cpp: float
     * @param endAngle cpp: float
     * @param segments cpp: int
     * @param color cpp: Color
     */
    @:native("DrawCircleSector")
    static function DrawCircleSector(center: Vector2, radius: Float, startAngle: Float, endAngle: Float, segments: Int, color: Color): Void;
    
    /**
     * Draw circle sector outline
     * @return cpp: void
     * @param center cpp: Vector2
     * @param radius cpp: float
     * @param startAngle cpp: float
     * @param endAngle cpp: float
     * @param segments cpp: int
     * @param color cpp: Color
     */
    @:native("DrawCircleSectorLines")
    static function DrawCircleSectorLines(center: Vector2, radius: Float, startAngle: Float, endAngle: Float, segments: Int, color: Color): Void;
    
    /**
     * Draw a gradient-filled circle
     * @return cpp: void
     * @param centerX cpp: int
     * @param centerY cpp: int
     * @param radius cpp: float
     * @param color1 cpp: Color
     * @param color2 cpp: Color
     */
    @:native("DrawCircleGradient")
    static function DrawCircleGradient(centerX: Int, centerY: Int, radius: Float, color1: Color, color2: Color): Void;
    
    /**
     * Draw a color-filled circle (Vector version)
     * @return cpp: void
     * @param center cpp: Vector2
     * @param radius cpp: float
     * @param color cpp: Color
     */
    @:native("DrawCircleV")
    static function DrawCircleV(center: Vector2, radius: Float, color: Color): Void;
    
    /**
     * Draw circle outline
     * @return cpp: void
     * @param centerX cpp: int
     * @param centerY cpp: int
     * @param radius cpp: float
     * @param color cpp: Color
     */
    @:native("DrawCircleLines")
    static function DrawCircleLines(centerX: Int, centerY: Int, radius: Float, color: Color): Void;
    
    /**
     * Draw circle outline (Vector version)
     * @return cpp: void
     * @param center cpp: Vector2
     * @param radius cpp: float
     * @param color cpp: Color
     */
    @:native("DrawCircleLinesV")
    static function DrawCircleLinesV(center: Vector2, radius: Float, color: Color): Void;
    
    /**
     * Draw ellipse
     * @return cpp: void
     * @param centerX cpp: int
     * @param centerY cpp: int
     * @param radiusH cpp: float
     * @param radiusV cpp: float
     * @param color cpp: Color
     */
    @:native("DrawEllipse")
    static function DrawEllipse(centerX: Int, centerY: Int, radiusH: Float, radiusV: Float, color: Color): Void;
    
    /**
     * Draw ellipse outline
     * @return cpp: void
     * @param centerX cpp: int
     * @param centerY cpp: int
     * @param radiusH cpp: float
     * @param radiusV cpp: float
     * @param color cpp: Color
     */
    @:native("DrawEllipseLines")
    static function DrawEllipseLines(centerX: Int, centerY: Int, radiusH: Float, radiusV: Float, color: Color): Void;
    
    /**
     * Draw ring
     * @return cpp: void
     * @param center cpp: Vector2
     * @param innerRadius cpp: float
     * @param outerRadius cpp: float
     * @param startAngle cpp: float
     * @param endAngle cpp: float
     * @param segments cpp: int
     * @param color cpp: Color
     */
    @:native("DrawRing")
    static function DrawRing(center: Vector2, innerRadius: Float, outerRadius: Float, startAngle: Float, endAngle: Float, segments: Int, color: Color): Void;
    
    /**
     * Draw ring outline
     * @return cpp: void
     * @param center cpp: Vector2
     * @param innerRadius cpp: float
     * @param outerRadius cpp: float
     * @param startAngle cpp: float
     * @param endAngle cpp: float
     * @param segments cpp: int
     * @param color cpp: Color
     */
    @:native("DrawRingLines")
    static function DrawRingLines(center: Vector2, innerRadius: Float, outerRadius: Float, startAngle: Float, endAngle: Float, segments: Int, color: Color): Void;
    
    /**
     * Draw a color-filled rectangle
     * @return cpp: void
     * @param posX cpp: int
     * @param posY cpp: int
     * @param width cpp: int
     * @param height cpp: int
     * @param color cpp: Color
     */
    @:native("DrawRectangle")
    static function DrawRectangle(posX: Int, posY: Int, width: Int, height: Int, color: Color): Void;
    
    /**
     * Draw a color-filled rectangle (Vector version)
     * @return cpp: void
     * @param position cpp: Vector2
     * @param size cpp: Vector2
     * @param color cpp: Color
     */
    @:native("DrawRectangleV")
    static function DrawRectangleV(position: Vector2, size: Vector2, color: Color): Void;
    
    /**
     * Draw a color-filled rectangle
     * @return cpp: void
     * @param rec cpp: Rectangle
     * @param color cpp: Color
     */
    @:native("DrawRectangleRec")
    static function DrawRectangleRec(rec: Rectangle, color: Color): Void;
    
    /**
     * Draw a color-filled rectangle with pro parameters
     * @return cpp: void
     * @param rec cpp: Rectangle
     * @param origin cpp: Vector2
     * @param rotation cpp: float
     * @param color cpp: Color
     */
    @:native("DrawRectanglePro")
    static function DrawRectanglePro(rec: Rectangle, origin: Vector2, rotation: Float, color: Color): Void;
    
    /**
     * Draw a vertical-gradient-filled rectangle
     * @return cpp: void
     * @param posX cpp: int
     * @param posY cpp: int
     * @param width cpp: int
     * @param height cpp: int
     * @param color1 cpp: Color
     * @param color2 cpp: Color
     */
    @:native("DrawRectangleGradientV")
    static function DrawRectangleGradientV(posX: Int, posY: Int, width: Int, height: Int, color1: Color, color2: Color): Void;
    
    /**
     * Draw a horizontal-gradient-filled rectangle
     * @return cpp: void
     * @param posX cpp: int
     * @param posY cpp: int
     * @param width cpp: int
     * @param height cpp: int
     * @param color1 cpp: Color
     * @param color2 cpp: Color
     */
    @:native("DrawRectangleGradientH")
    static function DrawRectangleGradientH(posX: Int, posY: Int, width: Int, height: Int, color1: Color, color2: Color): Void;
    
    /**
     * Draw a gradient-filled rectangle with custom vertex colors
     * @return cpp: void
     * @param rec cpp: Rectangle
     * @param col1 cpp: Color
     * @param col2 cpp: Color
     * @param col3 cpp: Color
     * @param col4 cpp: Color
     */
    @:native("DrawRectangleGradientEx")
    static function DrawRectangleGradientEx(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color): Void;
    
    /**
     * Draw rectangle outline
     * @return cpp: void
     * @param posX cpp: int
     * @param posY cpp: int
     * @param width cpp: int
     * @param height cpp: int
     * @param color cpp: Color
     */
    @:native("DrawRectangleLines")
    static function DrawRectangleLines(posX: Int, posY: Int, width: Int, height: Int, color: Color): Void;
    
    /**
     * Draw rectangle outline with extended parameters
     * @return cpp: void
     * @param rec cpp: Rectangle
     * @param lineThick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawRectangleLinesEx")
    static function DrawRectangleLinesEx(rec: Rectangle, lineThick: Float, color: Color): Void;
    
    /**
     * Draw rectangle with rounded edges
     * @return cpp: void
     * @param rec cpp: Rectangle
     * @param roundness cpp: float
     * @param segments cpp: int
     * @param color cpp: Color
     */
    @:native("DrawRectangleRounded")
    static function DrawRectangleRounded(rec: Rectangle, roundness: Float, segments: Int, color: Color): Void;
    
    /**
     * Draw rectangle lines with rounded edges
     * @return cpp: void
     * @param rec cpp: Rectangle
     * @param roundness cpp: float
     * @param segments cpp: int
     * @param color cpp: Color
     */
    @:native("DrawRectangleRoundedLines")
    static function DrawRectangleRoundedLines(rec: Rectangle, roundness: Float, segments: Int, color: Color): Void;
    
    /**
     * Draw rectangle with rounded edges outline
     * @return cpp: void
     * @param rec cpp: Rectangle
     * @param roundness cpp: float
     * @param segments cpp: int
     * @param lineThick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawRectangleRoundedLinesEx")
    static function DrawRectangleRoundedLinesEx(rec: Rectangle, roundness: Float, segments: Int, lineThick: Float, color: Color): Void;
    
    /**
     * Draw a color-filled triangle (vertex in counter-clockwise order!)
     * @return cpp: void
     * @param v1 cpp: Vector2
     * @param v2 cpp: Vector2
     * @param v3 cpp: Vector2
     * @param color cpp: Color
     */
    @:native("DrawTriangle")
    static function DrawTriangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color): Void;
    
    /**
     * Draw triangle outline (vertex in counter-clockwise order!)
     * @return cpp: void
     * @param v1 cpp: Vector2
     * @param v2 cpp: Vector2
     * @param v3 cpp: Vector2
     * @param color cpp: Color
     */
    @:native("DrawTriangleLines")
    static function DrawTriangleLines(v1: Vector2, v2: Vector2, v3: Vector2, color: Color): Void;
    
    /**
     * Draw a triangle fan defined by points (first vertex is the center)
     * @return cpp: void
     * @param points cpp: const Vector2 *
     * @param pointCount cpp: int
     * @param color cpp: Color
     */
    @:native("DrawTriangleFan")
    static function DrawTriangleFan(points: cpp.RawPointer<Vector2>, pointCount: Int, color: Color): Void;
    
    /**
     * Draw a triangle strip defined by points
     * @return cpp: void
     * @param points cpp: const Vector2 *
     * @param pointCount cpp: int
     * @param color cpp: Color
     */
    @:native("DrawTriangleStrip")
    static function DrawTriangleStrip(points: cpp.RawPointer<Vector2>, pointCount: Int, color: Color): Void;
    
    /**
     * Draw a regular polygon (Vector version)
     * @return cpp: void
     * @param center cpp: Vector2
     * @param sides cpp: int
     * @param radius cpp: float
     * @param rotation cpp: float
     * @param color cpp: Color
     */
    @:native("DrawPoly")
    static function DrawPoly(center: Vector2, sides: Int, radius: Float, rotation: Float, color: Color): Void;
    
    /**
     * Draw a polygon outline of n sides
     * @return cpp: void
     * @param center cpp: Vector2
     * @param sides cpp: int
     * @param radius cpp: float
     * @param rotation cpp: float
     * @param color cpp: Color
     */
    @:native("DrawPolyLines")
    static function DrawPolyLines(center: Vector2, sides: Int, radius: Float, rotation: Float, color: Color): Void;
    
    /**
     * Draw a polygon outline of n sides with extended parameters
     * @return cpp: void
     * @param center cpp: Vector2
     * @param sides cpp: int
     * @param radius cpp: float
     * @param rotation cpp: float
     * @param lineThick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawPolyLinesEx")
    static function DrawPolyLinesEx(center: Vector2, sides: Int, radius: Float, rotation: Float, lineThick: Float, color: Color): Void;
    
    /**
     * Draw spline: Linear, minimum 2 points
     * @return cpp: void
     * @param points cpp: const Vector2 *
     * @param pointCount cpp: int
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawSplineLinear")
    static function DrawSplineLinear(points: cpp.RawPointer<Vector2>, pointCount: Int, thick: Float, color: Color): Void;
    
    /**
     * Draw spline: B-Spline, minimum 4 points
     * @return cpp: void
     * @param points cpp: const Vector2 *
     * @param pointCount cpp: int
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawSplineBasis")
    static function DrawSplineBasis(points: cpp.RawPointer<Vector2>, pointCount: Int, thick: Float, color: Color): Void;
    
    /**
     * Draw spline: Catmull-Rom, minimum 4 points
     * @return cpp: void
     * @param points cpp: const Vector2 *
     * @param pointCount cpp: int
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawSplineCatmullRom")
    static function DrawSplineCatmullRom(points: cpp.RawPointer<Vector2>, pointCount: Int, thick: Float, color: Color): Void;
    
    /**
     * Draw spline: Quadratic Bezier, minimum 3 points (1 control point): [p1, c2, p3, c4...]
     * @return cpp: void
     * @param points cpp: const Vector2 *
     * @param pointCount cpp: int
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawSplineBezierQuadratic")
    static function DrawSplineBezierQuadratic(points: cpp.RawPointer<Vector2>, pointCount: Int, thick: Float, color: Color): Void;
    
    /**
     * Draw spline: Cubic Bezier, minimum 4 points (2 control points): [p1, c2, c3, p4, c5, c6...]
     * @return cpp: void
     * @param points cpp: const Vector2 *
     * @param pointCount cpp: int
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawSplineBezierCubic")
    static function DrawSplineBezierCubic(points: cpp.RawPointer<Vector2>, pointCount: Int, thick: Float, color: Color): Void;
    
    /**
     * Draw spline segment: Linear, 2 points
     * @return cpp: void
     * @param p1 cpp: Vector2
     * @param p2 cpp: Vector2
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawSplineSegmentLinear")
    static function DrawSplineSegmentLinear(p1: Vector2, p2: Vector2, thick: Float, color: Color): Void;
    
    /**
     * Draw spline segment: B-Spline, 4 points
     * @return cpp: void
     * @param p1 cpp: Vector2
     * @param p2 cpp: Vector2
     * @param p3 cpp: Vector2
     * @param p4 cpp: Vector2
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawSplineSegmentBasis")
    static function DrawSplineSegmentBasis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: Float, color: Color): Void;
    
    /**
     * Draw spline segment: Catmull-Rom, 4 points
     * @return cpp: void
     * @param p1 cpp: Vector2
     * @param p2 cpp: Vector2
     * @param p3 cpp: Vector2
     * @param p4 cpp: Vector2
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawSplineSegmentCatmullRom")
    static function DrawSplineSegmentCatmullRom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: Float, color: Color): Void;
    
    /**
     * Draw spline segment: Quadratic Bezier, 2 points, 1 control point
     * @return cpp: void
     * @param p1 cpp: Vector2
     * @param c2 cpp: Vector2
     * @param p3 cpp: Vector2
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawSplineSegmentBezierQuadratic")
    static function DrawSplineSegmentBezierQuadratic(p1: Vector2, c2: Vector2, p3: Vector2, thick: Float, color: Color): Void;
    
    /**
     * Draw spline segment: Cubic Bezier, 2 points, 2 control points
     * @return cpp: void
     * @param p1 cpp: Vector2
     * @param c2 cpp: Vector2
     * @param c3 cpp: Vector2
     * @param p4 cpp: Vector2
     * @param thick cpp: float
     * @param color cpp: Color
     */
    @:native("DrawSplineSegmentBezierCubic")
    static function DrawSplineSegmentBezierCubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, thick: Float, color: Color): Void;
    
    /**
     * Get (evaluate) spline point: Linear
     * @return cpp: Vector2
     * @param startPos cpp: Vector2
     * @param endPos cpp: Vector2
     * @param t cpp: float
     */
    @:native("GetSplinePointLinear")
    static function GetSplinePointLinear(startPos: Vector2, endPos: Vector2, t: Float): Vector2;
    
    /**
     * Get (evaluate) spline point: B-Spline
     * @return cpp: Vector2
     * @param p1 cpp: Vector2
     * @param p2 cpp: Vector2
     * @param p3 cpp: Vector2
     * @param p4 cpp: Vector2
     * @param t cpp: float
     */
    @:native("GetSplinePointBasis")
    static function GetSplinePointBasis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: Float): Vector2;
    
    /**
     * Get (evaluate) spline point: Catmull-Rom
     * @return cpp: Vector2
     * @param p1 cpp: Vector2
     * @param p2 cpp: Vector2
     * @param p3 cpp: Vector2
     * @param p4 cpp: Vector2
     * @param t cpp: float
     */
    @:native("GetSplinePointCatmullRom")
    static function GetSplinePointCatmullRom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: Float): Vector2;
    
    /**
     * Get (evaluate) spline point: Quadratic Bezier
     * @return cpp: Vector2
     * @param p1 cpp: Vector2
     * @param c2 cpp: Vector2
     * @param p3 cpp: Vector2
     * @param t cpp: float
     */
    @:native("GetSplinePointBezierQuad")
    static function GetSplinePointBezierQuad(p1: Vector2, c2: Vector2, p3: Vector2, t: Float): Vector2;
    
    /**
     * Get (evaluate) spline point: Cubic Bezier
     * @return cpp: Vector2
     * @param p1 cpp: Vector2
     * @param c2 cpp: Vector2
     * @param c3 cpp: Vector2
     * @param p4 cpp: Vector2
     * @param t cpp: float
     */
    @:native("GetSplinePointBezierCubic")
    static function GetSplinePointBezierCubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, t: Float): Vector2;
    
    /**
     * Check collision between two rectangles
     * @return cpp: bool
     * @param rec1 cpp: Rectangle
     * @param rec2 cpp: Rectangle
     */
    @:native("CheckCollisionRecs")
    static function CheckCollisionRecs(rec1: Rectangle, rec2: Rectangle): Bool;
    
    /**
     * Check collision between two circles
     * @return cpp: bool
     * @param center1 cpp: Vector2
     * @param radius1 cpp: float
     * @param center2 cpp: Vector2
     * @param radius2 cpp: float
     */
    @:native("CheckCollisionCircles")
    static function CheckCollisionCircles(center1: Vector2, radius1: Float, center2: Vector2, radius2: Float): Bool;
    
    /**
     * Check collision between circle and rectangle
     * @return cpp: bool
     * @param center cpp: Vector2
     * @param radius cpp: float
     * @param rec cpp: Rectangle
     */
    @:native("CheckCollisionCircleRec")
    static function CheckCollisionCircleRec(center: Vector2, radius: Float, rec: Rectangle): Bool;
    
    /**
     * Check if point is inside rectangle
     * @return cpp: bool
     * @param point cpp: Vector2
     * @param rec cpp: Rectangle
     */
    @:native("CheckCollisionPointRec")
    static function CheckCollisionPointRec(point: Vector2, rec: Rectangle): Bool;
    
    /**
     * Check if point is inside circle
     * @return cpp: bool
     * @param point cpp: Vector2
     * @param center cpp: Vector2
     * @param radius cpp: float
     */
    @:native("CheckCollisionPointCircle")
    static function CheckCollisionPointCircle(point: Vector2, center: Vector2, radius: Float): Bool;
    
    /**
     * Check if point is inside a triangle
     * @return cpp: bool
     * @param point cpp: Vector2
     * @param p1 cpp: Vector2
     * @param p2 cpp: Vector2
     * @param p3 cpp: Vector2
     */
    @:native("CheckCollisionPointTriangle")
    static function CheckCollisionPointTriangle(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2): Bool;
    
    /**
     * Check if point is within a polygon described by array of vertices
     * @return cpp: bool
     * @param point cpp: Vector2
     * @param points cpp: const Vector2 *
     * @param pointCount cpp: int
     */
    @:native("CheckCollisionPointPoly")
    static function CheckCollisionPointPoly(point: Vector2, points: cpp.RawPointer<Vector2>, pointCount: Int): Bool;
    
    /**
     * Check the collision between two lines defined by two points each, returns collision point by reference
     * @return cpp: bool
     * @param startPos1 cpp: Vector2
     * @param endPos1 cpp: Vector2
     * @param startPos2 cpp: Vector2
     * @param endPos2 cpp: Vector2
     * @param collisionPoint cpp: Vector2 *
     */
    @:native("CheckCollisionLines")
    static function CheckCollisionLines(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2, collisionPoint: cpp.RawPointer<Vector2>): Bool;
    
    /**
     * Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
     * @return cpp: bool
     * @param point cpp: Vector2
     * @param p1 cpp: Vector2
     * @param p2 cpp: Vector2
     * @param threshold cpp: int
     */
    @:native("CheckCollisionPointLine")
    static function CheckCollisionPointLine(point: Vector2, p1: Vector2, p2: Vector2, threshold: Int): Bool;
    
    /**
     * Check if circle collides with a line created betweeen two points [p1] and [p2]
     * @return cpp: bool
     * @param center cpp: Vector2
     * @param radius cpp: float
     * @param p1 cpp: Vector2
     * @param p2 cpp: Vector2
     */
    @:native("CheckCollisionCircleLine")
    static function CheckCollisionCircleLine(center: Vector2, radius: Float, p1: Vector2, p2: Vector2): Bool;
    
    /**
     * Get collision rectangle for two rectangles collision
     * @return cpp: Rectangle
     * @param rec1 cpp: Rectangle
     * @param rec2 cpp: Rectangle
     */
    @:native("GetCollisionRec")
    static function GetCollisionRec(rec1: Rectangle, rec2: Rectangle): Rectangle;
    
    /**
     * Load image from file into CPU memory (RAM)
     * @return cpp: Image
     * @param fileName cpp: const char *
     */
    @:native("LoadImage")
    static function LoadImage(fileName: String): Image;
    
    /**
     * Load image from RAW file data
     * @return cpp: Image
     * @param fileName cpp: const char *
     * @param width cpp: int
     * @param height cpp: int
     * @param format cpp: int
     * @param headerSize cpp: int
     */
    @:native("LoadImageRaw")
    static function LoadImageRaw(fileName: String, width: Int, height: Int, format: Int, headerSize: Int): Image;
    
    /**
     * Load image from SVG file data or string with specified size
     * @return cpp: Image
     * @param fileNameOrString cpp: const char *
     * @param width cpp: int
     * @param height cpp: int
     */
    @:native("LoadImageSvg")
    static function LoadImageSvg(fileNameOrString: String, width: Int, height: Int): Image;
    
    /**
     * Load image sequence from file (frames appended to image.data)
     * @return cpp: Image
     * @param fileName cpp: const char *
     * @param frames cpp: int *
     */
    @:native("LoadImageAnim")
    static function LoadImageAnim(fileName: String, frames: cpp.RawPointer<Int>): Image;
    
    /**
     * Load image sequence from memory buffer
     * @return cpp: Image
     * @param fileType cpp: const char *
     * @param fileData cpp: const unsigned char *
     * @param dataSize cpp: int
     * @param frames cpp: int *
     */
    @:native("LoadImageAnimFromMemory")
    static function LoadImageAnimFromMemory(fileType: String, fileData: cpp.RawPointer<cpp.UInt8>, dataSize: Int, frames: cpp.RawPointer<Int>): Image;
    
    /**
     * Load image from memory buffer, fileType refers to extension: i.e. '.png'
     * @return cpp: Image
     * @param fileType cpp: const char *
     * @param fileData cpp: const unsigned char *
     * @param dataSize cpp: int
     */
    @:native("LoadImageFromMemory")
    static function LoadImageFromMemory(fileType: String, fileData: cpp.RawPointer<cpp.UInt8>, dataSize: Int): Image;
    
    /**
     * Load image from GPU texture data
     * @return cpp: Image
     * @param texture cpp: Texture2D
     */
    @:native("LoadImageFromTexture")
    static function LoadImageFromTexture(texture: Texture): Image;
    
    /**
     * Load image from screen buffer and (screenshot)
     * @return cpp: Image
     */
    @:native("LoadImageFromScreen")
    static function LoadImageFromScreen(): Image;
    
    /**
     * Check if an image is ready
     * @return cpp: bool
     * @param image cpp: Image
     */
    @:native("IsImageReady")
    static function IsImageReady(image: Image): Bool;
    
    /**
     * Unload image from CPU memory (RAM)
     * @return cpp: void
     * @param image cpp: Image
     */
    @:native("UnloadImage")
    static function UnloadImage(image: Image): Void;
    
    /**
     * Export image data to file, returns true on success
     * @return cpp: bool
     * @param image cpp: Image
     * @param fileName cpp: const char *
     */
    @:native("ExportImage")
    static function ExportImage(image: Image, fileName: String): Bool;
    
    /**
     * Export image to memory buffer
     * @return cpp: unsigned char *
     * @param image cpp: Image
     * @param fileType cpp: const char *
     * @param fileSize cpp: int *
     */
    @:native("ExportImageToMemory")
    static function ExportImageToMemory(image: Image, fileType: String, fileSize: cpp.RawPointer<Int>): cpp.RawPointer<cpp.UInt8>;
    
    /**
     * Export image as code file defining an array of bytes, returns true on success
     * @return cpp: bool
     * @param image cpp: Image
     * @param fileName cpp: const char *
     */
    @:native("ExportImageAsCode")
    static function ExportImageAsCode(image: Image, fileName: String): Bool;
    
    /**
     * Generate image: plain color
     * @return cpp: Image
     * @param width cpp: int
     * @param height cpp: int
     * @param color cpp: Color
     */
    @:native("GenImageColor")
    static function GenImageColor(width: Int, height: Int, color: Color): Image;
    
    /**
     * Generate image: linear gradient, direction in degrees [0..360], 0=Vertical gradient
     * @return cpp: Image
     * @param width cpp: int
     * @param height cpp: int
     * @param direction cpp: int
     * @param start cpp: Color
     * @param end cpp: Color
     */
    @:native("GenImageGradientLinear")
    static function GenImageGradientLinear(width: Int, height: Int, direction: Int, start: Color, end: Color): Image;
    
    /**
     * Generate image: radial gradient
     * @return cpp: Image
     * @param width cpp: int
     * @param height cpp: int
     * @param density cpp: float
     * @param inner cpp: Color
     * @param outer cpp: Color
     */
    @:native("GenImageGradientRadial")
    static function GenImageGradientRadial(width: Int, height: Int, density: Float, inner: Color, outer: Color): Image;
    
    /**
     * Generate image: square gradient
     * @return cpp: Image
     * @param width cpp: int
     * @param height cpp: int
     * @param density cpp: float
     * @param inner cpp: Color
     * @param outer cpp: Color
     */
    @:native("GenImageGradientSquare")
    static function GenImageGradientSquare(width: Int, height: Int, density: Float, inner: Color, outer: Color): Image;
    
    /**
     * Generate image: checked
     * @return cpp: Image
     * @param width cpp: int
     * @param height cpp: int
     * @param checksX cpp: int
     * @param checksY cpp: int
     * @param col1 cpp: Color
     * @param col2 cpp: Color
     */
    @:native("GenImageChecked")
    static function GenImageChecked(width: Int, height: Int, checksX: Int, checksY: Int, col1: Color, col2: Color): Image;
    
    /**
     * Generate image: white noise
     * @return cpp: Image
     * @param width cpp: int
     * @param height cpp: int
     * @param factor cpp: float
     */
    @:native("GenImageWhiteNoise")
    static function GenImageWhiteNoise(width: Int, height: Int, factor: Float): Image;
    
    /**
     * Generate image: perlin noise
     * @return cpp: Image
     * @param width cpp: int
     * @param height cpp: int
     * @param offsetX cpp: int
     * @param offsetY cpp: int
     * @param scale cpp: float
     */
    @:native("GenImagePerlinNoise")
    static function GenImagePerlinNoise(width: Int, height: Int, offsetX: Int, offsetY: Int, scale: Float): Image;
    
    /**
     * Generate image: cellular algorithm, bigger tileSize means bigger cells
     * @return cpp: Image
     * @param width cpp: int
     * @param height cpp: int
     * @param tileSize cpp: int
     */
    @:native("GenImageCellular")
    static function GenImageCellular(width: Int, height: Int, tileSize: Int): Image;
    
    /**
     * Generate image: grayscale image from text data
     * @return cpp: Image
     * @param width cpp: int
     * @param height cpp: int
     * @param text cpp: const char *
     */
    @:native("GenImageText")
    static function GenImageText(width: Int, height: Int, text: String): Image;
    
    /**
     * Create an image duplicate (useful for transformations)
     * @return cpp: Image
     * @param image cpp: Image
     */
    @:native("ImageCopy")
    static function ImageCopy(image: Image): Image;
    
    /**
     * Create an image from another image piece
     * @return cpp: Image
     * @param image cpp: Image
     * @param rec cpp: Rectangle
     */
    @:native("ImageFromImage")
    static function ImageFromImage(image: Image, rec: Rectangle): Image;
    
    /**
     * Create an image from a selected channel of another image (GRAYSCALE)
     * @return cpp: Image
     * @param image cpp: Image
     * @param selectedChannel cpp: int
     */
    @:native("ImageFromChannel")
    static function ImageFromChannel(image: Image, selectedChannel: Int): Image;
    
    /**
     * Create an image from text (default font)
     * @return cpp: Image
     * @param text cpp: const char *
     * @param fontSize cpp: int
     * @param color cpp: Color
     */
    @:native("ImageText")
    static function ImageText(text: String, fontSize: Int, color: Color): Image;
    
    /**
     * Create an image from text (custom sprite font)
     * @return cpp: Image
     * @param font cpp: Font
     * @param text cpp: const char *
     * @param fontSize cpp: float
     * @param spacing cpp: float
     * @param tint cpp: Color
     */
    @:native("ImageTextEx")
    static function ImageTextEx(font: Font, text: String, fontSize: Float, spacing: Float, tint: Color): Image;
    
    /**
     * Convert image data to desired format
     * @return cpp: void
     * @param image cpp: Image *
     * @param newFormat cpp: int
     */
    @:native("ImageFormat")
    static function ImageFormat(image: cpp.RawPointer<Image>, newFormat: Int): Void;
    
    /**
     * Convert image to POT (power-of-two)
     * @return cpp: void
     * @param image cpp: Image *
     * @param fill cpp: Color
     */
    @:native("ImageToPOT")
    static function ImageToPOT(image: cpp.RawPointer<Image>, fill: Color): Void;
    
    /**
     * Crop an image to a defined rectangle
     * @return cpp: void
     * @param image cpp: Image *
     * @param crop cpp: Rectangle
     */
    @:native("ImageCrop")
    static function ImageCrop(image: cpp.RawPointer<Image>, crop: Rectangle): Void;
    
    /**
     * Crop image depending on alpha value
     * @return cpp: void
     * @param image cpp: Image *
     * @param threshold cpp: float
     */
    @:native("ImageAlphaCrop")
    static function ImageAlphaCrop(image: cpp.RawPointer<Image>, threshold: Float): Void;
    
    /**
     * Clear alpha channel to desired color
     * @return cpp: void
     * @param image cpp: Image *
     * @param color cpp: Color
     * @param threshold cpp: float
     */
    @:native("ImageAlphaClear")
    static function ImageAlphaClear(image: cpp.RawPointer<Image>, color: Color, threshold: Float): Void;
    
    /**
     * Apply alpha mask to image
     * @return cpp: void
     * @param image cpp: Image *
     * @param alphaMask cpp: Image
     */
    @:native("ImageAlphaMask")
    static function ImageAlphaMask(image: cpp.RawPointer<Image>, alphaMask: Image): Void;
    
    /**
     * Premultiply alpha channel
     * @return cpp: void
     * @param image cpp: Image *
     */
    @:native("ImageAlphaPremultiply")
    static function ImageAlphaPremultiply(image: cpp.RawPointer<Image>): Void;
    
    /**
     * Apply Gaussian blur using a box blur approximation
     * @return cpp: void
     * @param image cpp: Image *
     * @param blurSize cpp: int
     */
    @:native("ImageBlurGaussian")
    static function ImageBlurGaussian(image: cpp.RawPointer<Image>, blurSize: Int): Void;
    
    /**
     * Apply custom square convolution kernel to image
     * @return cpp: void
     * @param image cpp: Image *
     * @param kernel cpp: const float *
     * @param kernelSize cpp: int
     */
    @:native("ImageKernelConvolution")
    static function ImageKernelConvolution(image: cpp.RawPointer<Image>, kernel: cpp.RawPointer<Float>, kernelSize: Int): Void;
    
    /**
     * Resize image (Bicubic scaling algorithm)
     * @return cpp: void
     * @param image cpp: Image *
     * @param newWidth cpp: int
     * @param newHeight cpp: int
     */
    @:native("ImageResize")
    static function ImageResize(image: cpp.RawPointer<Image>, newWidth: Int, newHeight: Int): Void;
    
    /**
     * Resize image (Nearest-Neighbor scaling algorithm)
     * @return cpp: void
     * @param image cpp: Image *
     * @param newWidth cpp: int
     * @param newHeight cpp: int
     */
    @:native("ImageResizeNN")
    static function ImageResizeNN(image: cpp.RawPointer<Image>, newWidth: Int, newHeight: Int): Void;
    
    /**
     * Resize canvas and fill with color
     * @return cpp: void
     * @param image cpp: Image *
     * @param newWidth cpp: int
     * @param newHeight cpp: int
     * @param offsetX cpp: int
     * @param offsetY cpp: int
     * @param fill cpp: Color
     */
    @:native("ImageResizeCanvas")
    static function ImageResizeCanvas(image: cpp.RawPointer<Image>, newWidth: Int, newHeight: Int, offsetX: Int, offsetY: Int, fill: Color): Void;
    
    /**
     * Compute all mipmap levels for a provided image
     * @return cpp: void
     * @param image cpp: Image *
     */
    @:native("ImageMipmaps")
    static function ImageMipmaps(image: cpp.RawPointer<Image>): Void;
    
    /**
     * Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
     * @return cpp: void
     * @param image cpp: Image *
     * @param rBpp cpp: int
     * @param gBpp cpp: int
     * @param bBpp cpp: int
     * @param aBpp cpp: int
     */
    @:native("ImageDither")
    static function ImageDither(image: cpp.RawPointer<Image>, rBpp: Int, gBpp: Int, bBpp: Int, aBpp: Int): Void;
    
    /**
     * Flip image vertically
     * @return cpp: void
     * @param image cpp: Image *
     */
    @:native("ImageFlipVertical")
    static function ImageFlipVertical(image: cpp.RawPointer<Image>): Void;
    
    /**
     * Flip image horizontally
     * @return cpp: void
     * @param image cpp: Image *
     */
    @:native("ImageFlipHorizontal")
    static function ImageFlipHorizontal(image: cpp.RawPointer<Image>): Void;
    
    /**
     * Rotate image by input angle in degrees (-359 to 359)
     * @return cpp: void
     * @param image cpp: Image *
     * @param degrees cpp: int
     */
    @:native("ImageRotate")
    static function ImageRotate(image: cpp.RawPointer<Image>, degrees: Int): Void;
    
    /**
     * Rotate image clockwise 90deg
     * @return cpp: void
     * @param image cpp: Image *
     */
    @:native("ImageRotateCW")
    static function ImageRotateCW(image: cpp.RawPointer<Image>): Void;
    
    /**
     * Rotate image counter-clockwise 90deg
     * @return cpp: void
     * @param image cpp: Image *
     */
    @:native("ImageRotateCCW")
    static function ImageRotateCCW(image: cpp.RawPointer<Image>): Void;
    
    /**
     * Modify image color: tint
     * @return cpp: void
     * @param image cpp: Image *
     * @param color cpp: Color
     */
    @:native("ImageColorTint")
    static function ImageColorTint(image: cpp.RawPointer<Image>, color: Color): Void;
    
    /**
     * Modify image color: invert
     * @return cpp: void
     * @param image cpp: Image *
     */
    @:native("ImageColorInvert")
    static function ImageColorInvert(image: cpp.RawPointer<Image>): Void;
    
    /**
     * Modify image color: grayscale
     * @return cpp: void
     * @param image cpp: Image *
     */
    @:native("ImageColorGrayscale")
    static function ImageColorGrayscale(image: cpp.RawPointer<Image>): Void;
    
    /**
     * Modify image color: contrast (-100 to 100)
     * @return cpp: void
     * @param image cpp: Image *
     * @param contrast cpp: float
     */
    @:native("ImageColorContrast")
    static function ImageColorContrast(image: cpp.RawPointer<Image>, contrast: Float): Void;
    
    /**
     * Modify image color: brightness (-255 to 255)
     * @return cpp: void
     * @param image cpp: Image *
     * @param brightness cpp: int
     */
    @:native("ImageColorBrightness")
    static function ImageColorBrightness(image: cpp.RawPointer<Image>, brightness: Int): Void;
    
    /**
     * Modify image color: replace color
     * @return cpp: void
     * @param image cpp: Image *
     * @param color cpp: Color
     * @param replace cpp: Color
     */
    @:native("ImageColorReplace")
    static function ImageColorReplace(image: cpp.RawPointer<Image>, color: Color, replace: Color): Void;
    
    /**
     * Load color data from image as a Color array (RGBA - 32bit)
     * @return cpp: Color *
     * @param image cpp: Image
     */
    @:native("LoadImageColors")
    static function LoadImageColors(image: Image): cpp.RawPointer<Color>;
    
    /**
     * Load colors palette from image as a Color array (RGBA - 32bit)
     * @return cpp: Color *
     * @param image cpp: Image
     * @param maxPaletteSize cpp: int
     * @param colorCount cpp: int *
     */
    @:native("LoadImagePalette")
    static function LoadImagePalette(image: Image, maxPaletteSize: Int, colorCount: cpp.RawPointer<Int>): cpp.RawPointer<Color>;
    
    /**
     * Unload color data loaded with LoadImageColors()
     * @return cpp: void
     * @param colors cpp: Color *
     */
    @:native("UnloadImageColors")
    static function UnloadImageColors(colors: cpp.RawPointer<Color>): Void;
    
    /**
     * Unload colors palette loaded with LoadImagePalette()
     * @return cpp: void
     * @param colors cpp: Color *
     */
    @:native("UnloadImagePalette")
    static function UnloadImagePalette(colors: cpp.RawPointer<Color>): Void;
    
    /**
     * Get image alpha border rectangle
     * @return cpp: Rectangle
     * @param image cpp: Image
     * @param threshold cpp: float
     */
    @:native("GetImageAlphaBorder")
    static function GetImageAlphaBorder(image: Image, threshold: Float): Rectangle;
    
    /**
     * Get image pixel color at (x, y) position
     * @return cpp: Color
     * @param image cpp: Image
     * @param x cpp: int
     * @param y cpp: int
     */
    @:native("GetImageColor")
    static function GetImageColor(image: Image, x: Int, y: Int): Color;
    
    /**
     * Clear image background with given color
     * @return cpp: void
     * @param dst cpp: Image *
     * @param color cpp: Color
     */
    @:native("ImageClearBackground")
    static function ImageClearBackground(dst: cpp.RawPointer<Image>, color: Color): Void;
    
    /**
     * Draw pixel within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param posX cpp: int
     * @param posY cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawPixel")
    static function ImageDrawPixel(dst: cpp.RawPointer<Image>, posX: Int, posY: Int, color: Color): Void;
    
    /**
     * Draw pixel within an image (Vector version)
     * @return cpp: void
     * @param dst cpp: Image *
     * @param position cpp: Vector2
     * @param color cpp: Color
     */
    @:native("ImageDrawPixelV")
    static function ImageDrawPixelV(dst: cpp.RawPointer<Image>, position: Vector2, color: Color): Void;
    
    /**
     * Draw line within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param startPosX cpp: int
     * @param startPosY cpp: int
     * @param endPosX cpp: int
     * @param endPosY cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawLine")
    static function ImageDrawLine(dst: cpp.RawPointer<Image>, startPosX: Int, startPosY: Int, endPosX: Int, endPosY: Int, color: Color): Void;
    
    /**
     * Draw line within an image (Vector version)
     * @return cpp: void
     * @param dst cpp: Image *
     * @param start cpp: Vector2
     * @param end cpp: Vector2
     * @param color cpp: Color
     */
    @:native("ImageDrawLineV")
    static function ImageDrawLineV(dst: cpp.RawPointer<Image>, start: Vector2, end: Vector2, color: Color): Void;
    
    /**
     * Draw a line defining thickness within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param start cpp: Vector2
     * @param end cpp: Vector2
     * @param thick cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawLineEx")
    static function ImageDrawLineEx(dst: cpp.RawPointer<Image>, start: Vector2, end: Vector2, thick: Int, color: Color): Void;
    
    /**
     * Draw a filled circle within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param centerX cpp: int
     * @param centerY cpp: int
     * @param radius cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawCircle")
    static function ImageDrawCircle(dst: cpp.RawPointer<Image>, centerX: Int, centerY: Int, radius: Int, color: Color): Void;
    
    /**
     * Draw a filled circle within an image (Vector version)
     * @return cpp: void
     * @param dst cpp: Image *
     * @param center cpp: Vector2
     * @param radius cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawCircleV")
    static function ImageDrawCircleV(dst: cpp.RawPointer<Image>, center: Vector2, radius: Int, color: Color): Void;
    
    /**
     * Draw circle outline within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param centerX cpp: int
     * @param centerY cpp: int
     * @param radius cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawCircleLines")
    static function ImageDrawCircleLines(dst: cpp.RawPointer<Image>, centerX: Int, centerY: Int, radius: Int, color: Color): Void;
    
    /**
     * Draw circle outline within an image (Vector version)
     * @return cpp: void
     * @param dst cpp: Image *
     * @param center cpp: Vector2
     * @param radius cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawCircleLinesV")
    static function ImageDrawCircleLinesV(dst: cpp.RawPointer<Image>, center: Vector2, radius: Int, color: Color): Void;
    
    /**
     * Draw rectangle within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param posX cpp: int
     * @param posY cpp: int
     * @param width cpp: int
     * @param height cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawRectangle")
    static function ImageDrawRectangle(dst: cpp.RawPointer<Image>, posX: Int, posY: Int, width: Int, height: Int, color: Color): Void;
    
    /**
     * Draw rectangle within an image (Vector version)
     * @return cpp: void
     * @param dst cpp: Image *
     * @param position cpp: Vector2
     * @param size cpp: Vector2
     * @param color cpp: Color
     */
    @:native("ImageDrawRectangleV")
    static function ImageDrawRectangleV(dst: cpp.RawPointer<Image>, position: Vector2, size: Vector2, color: Color): Void;
    
    /**
     * Draw rectangle within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param rec cpp: Rectangle
     * @param color cpp: Color
     */
    @:native("ImageDrawRectangleRec")
    static function ImageDrawRectangleRec(dst: cpp.RawPointer<Image>, rec: Rectangle, color: Color): Void;
    
    /**
     * Draw rectangle lines within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param rec cpp: Rectangle
     * @param thick cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawRectangleLines")
    static function ImageDrawRectangleLines(dst: cpp.RawPointer<Image>, rec: Rectangle, thick: Int, color: Color): Void;
    
    /**
     * Draw triangle within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param v1 cpp: Vector2
     * @param v2 cpp: Vector2
     * @param v3 cpp: Vector2
     * @param color cpp: Color
     */
    @:native("ImageDrawTriangle")
    static function ImageDrawTriangle(dst: cpp.RawPointer<Image>, v1: Vector2, v2: Vector2, v3: Vector2, color: Color): Void;
    
    /**
     * Draw triangle with interpolated colors within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param v1 cpp: Vector2
     * @param v2 cpp: Vector2
     * @param v3 cpp: Vector2
     * @param c1 cpp: Color
     * @param c2 cpp: Color
     * @param c3 cpp: Color
     */
    @:native("ImageDrawTriangleEx")
    static function ImageDrawTriangleEx(dst: cpp.RawPointer<Image>, v1: Vector2, v2: Vector2, v3: Vector2, c1: Color, c2: Color, c3: Color): Void;
    
    /**
     * Draw triangle outline within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param v1 cpp: Vector2
     * @param v2 cpp: Vector2
     * @param v3 cpp: Vector2
     * @param color cpp: Color
     */
    @:native("ImageDrawTriangleLines")
    static function ImageDrawTriangleLines(dst: cpp.RawPointer<Image>, v1: Vector2, v2: Vector2, v3: Vector2, color: Color): Void;
    
    /**
     * Draw a triangle fan defined by points within an image (first vertex is the center)
     * @return cpp: void
     * @param dst cpp: Image *
     * @param points cpp: Vector2 *
     * @param pointCount cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawTriangleFan")
    static function ImageDrawTriangleFan(dst: cpp.RawPointer<Image>, points: cpp.RawPointer<Vector2>, pointCount: Int, color: Color): Void;
    
    /**
     * Draw a triangle strip defined by points within an image
     * @return cpp: void
     * @param dst cpp: Image *
     * @param points cpp: Vector2 *
     * @param pointCount cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawTriangleStrip")
    static function ImageDrawTriangleStrip(dst: cpp.RawPointer<Image>, points: cpp.RawPointer<Vector2>, pointCount: Int, color: Color): Void;
    
    /**
     * Draw a source image within a destination image (tint applied to source)
     * @return cpp: void
     * @param dst cpp: Image *
     * @param src cpp: Image
     * @param srcRec cpp: Rectangle
     * @param dstRec cpp: Rectangle
     * @param tint cpp: Color
     */
    @:native("ImageDraw")
    static function ImageDraw(dst: cpp.RawPointer<Image>, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color): Void;
    
    /**
     * Draw text (using default font) within an image (destination)
     * @return cpp: void
     * @param dst cpp: Image *
     * @param text cpp: const char *
     * @param posX cpp: int
     * @param posY cpp: int
     * @param fontSize cpp: int
     * @param color cpp: Color
     */
    @:native("ImageDrawText")
    static function ImageDrawText(dst: cpp.RawPointer<Image>, text: String, posX: Int, posY: Int, fontSize: Int, color: Color): Void;
    
    /**
     * Draw text (custom sprite font) within an image (destination)
     * @return cpp: void
     * @param dst cpp: Image *
     * @param font cpp: Font
     * @param text cpp: const char *
     * @param position cpp: Vector2
     * @param fontSize cpp: float
     * @param spacing cpp: float
     * @param tint cpp: Color
     */
    @:native("ImageDrawTextEx")
    static function ImageDrawTextEx(dst: cpp.RawPointer<Image>, font: Font, text: String, position: Vector2, fontSize: Float, spacing: Float, tint: Color): Void;
    
    /**
     * Load texture from file into GPU memory (VRAM)
     * @return cpp: Texture2D
     * @param fileName cpp: const char *
     */
    @:native("LoadTexture")
    static function LoadTexture(fileName: String): Texture;
    
    /**
     * Load texture from image data
     * @return cpp: Texture2D
     * @param image cpp: Image
     */
    @:native("LoadTextureFromImage")
    static function LoadTextureFromImage(image: Image): Texture;
    
    /**
     * Load cubemap from image, multiple image cubemap layouts supported
     * @return cpp: TextureCubemap
     * @param image cpp: Image
     * @param layout cpp: int
     */
    @:native("LoadTextureCubemap")
    static function LoadTextureCubemap(image: Image, layout: Int): Texture;
    
    /**
     * Load texture for rendering (framebuffer)
     * @return cpp: RenderTexture2D
     * @param width cpp: int
     * @param height cpp: int
     */
    @:native("LoadRenderTexture")
    static function LoadRenderTexture(width: Int, height: Int): RenderTexture;
    
    /**
     * Check if a texture is ready
     * @return cpp: bool
     * @param texture cpp: Texture2D
     */
    @:native("IsTextureReady")
    static function IsTextureReady(texture: Texture): Bool;
    
    /**
     * Unload texture from GPU memory (VRAM)
     * @return cpp: void
     * @param texture cpp: Texture2D
     */
    @:native("UnloadTexture")
    static function UnloadTexture(texture: Texture): Void;
    
    /**
     * Check if a render texture is ready
     * @return cpp: bool
     * @param target cpp: RenderTexture2D
     */
    @:native("IsRenderTextureReady")
    static function IsRenderTextureReady(target: RenderTexture): Bool;
    
    /**
     * Unload render texture from GPU memory (VRAM)
     * @return cpp: void
     * @param target cpp: RenderTexture2D
     */
    @:native("UnloadRenderTexture")
    static function UnloadRenderTexture(target: RenderTexture): Void;
    
    /**
     * Update GPU texture with new data
     * @return cpp: void
     * @param texture cpp: Texture2D
     * @param pixels cpp: const void *
     */
    @:native("UpdateTexture")
    static function UpdateTexture(texture: Texture, pixels: cpp.RawPointer<Void>): Void;
    
    /**
     * Update GPU texture rectangle with new data
     * @return cpp: void
     * @param texture cpp: Texture2D
     * @param rec cpp: Rectangle
     * @param pixels cpp: const void *
     */
    @:native("UpdateTextureRec")
    static function UpdateTextureRec(texture: Texture, rec: Rectangle, pixels: cpp.RawPointer<Void>): Void;
    
    /**
     * Generate GPU mipmaps for a texture
     * @return cpp: void
     * @param texture cpp: Texture2D *
     */
    @:native("GenTextureMipmaps")
    static function GenTextureMipmaps(texture: cpp.RawPointer<Texture>): Void;
    
    /**
     * Set texture scaling filter mode
     * @return cpp: void
     * @param texture cpp: Texture2D
     * @param filter cpp: int
     */
    @:native("SetTextureFilter")
    static function SetTextureFilter(texture: Texture, filter: Int): Void;
    
    /**
     * Set texture wrapping mode
     * @return cpp: void
     * @param texture cpp: Texture2D
     * @param wrap cpp: int
     */
    @:native("SetTextureWrap")
    static function SetTextureWrap(texture: Texture, wrap: Int): Void;
    
    /**
     * Draw a Texture2D
     * @return cpp: void
     * @param texture cpp: Texture2D
     * @param posX cpp: int
     * @param posY cpp: int
     * @param tint cpp: Color
     */
    @:native("DrawTexture")
    static function DrawTexture(texture: Texture, posX: Int, posY: Int, tint: Color): Void;
    
    /**
     * Draw a Texture2D with position defined as Vector2
     * @return cpp: void
     * @param texture cpp: Texture2D
     * @param position cpp: Vector2
     * @param tint cpp: Color
     */
    @:native("DrawTextureV")
    static function DrawTextureV(texture: Texture, position: Vector2, tint: Color): Void;
    
    /**
     * Draw a Texture2D with extended parameters
     * @return cpp: void
     * @param texture cpp: Texture2D
     * @param position cpp: Vector2
     * @param rotation cpp: float
     * @param scale cpp: float
     * @param tint cpp: Color
     */
    @:native("DrawTextureEx")
    static function DrawTextureEx(texture: Texture, position: Vector2, rotation: Float, scale: Float, tint: Color): Void;
    
    /**
     * Draw a part of a texture defined by a rectangle
     * @return cpp: void
     * @param texture cpp: Texture2D
     * @param source cpp: Rectangle
     * @param position cpp: Vector2
     * @param tint cpp: Color
     */
    @:native("DrawTextureRec")
    static function DrawTextureRec(texture: Texture, source: Rectangle, position: Vector2, tint: Color): Void;
    
    /**
     * Draw a part of a texture defined by a rectangle with 'pro' parameters
     * @return cpp: void
     * @param texture cpp: Texture2D
     * @param source cpp: Rectangle
     * @param dest cpp: Rectangle
     * @param origin cpp: Vector2
     * @param rotation cpp: float
     * @param tint cpp: Color
     */
    @:native("DrawTexturePro")
    static function DrawTexturePro(texture: Texture, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: Float, tint: Color): Void;
    
    /**
     * Draws a texture (or part of it) that stretches or shrinks nicely
     * @return cpp: void
     * @param texture cpp: Texture2D
     * @param nPatchInfo cpp: NPatchInfo
     * @param dest cpp: Rectangle
     * @param origin cpp: Vector2
     * @param rotation cpp: float
     * @param tint cpp: Color
     */
    @:native("DrawTextureNPatch")
    static function DrawTextureNPatch(texture: Texture, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: Float, tint: Color): Void;
    
    /**
     * Check if two colors are equal
     * @return cpp: bool
     * @param col1 cpp: Color
     * @param col2 cpp: Color
     */
    @:native("ColorIsEqual")
    static function ColorIsEqual(col1: Color, col2: Color): Bool;
    
    /**
     * Get color with alpha applied, alpha goes from 0.0f to 1.0f
     * @return cpp: Color
     * @param color cpp: Color
     * @param alpha cpp: float
     */
    @:native("Fade")
    static function Fade(color: Color, alpha: Float): Color;
    
    /**
     * Get hexadecimal value for a Color (0xRRGGBBAA)
     * @return cpp: int
     * @param color cpp: Color
     */
    @:native("ColorToInt")
    static function ColorToInt(color: Color): Int;
    
    /**
     * Get Color normalized as float [0..1]
     * @return cpp: Vector4
     * @param color cpp: Color
     */
    @:native("ColorNormalize")
    static function ColorNormalize(color: Color): Vector4;
    
    /**
     * Get Color from normalized values [0..1]
     * @return cpp: Color
     * @param normalized cpp: Vector4
     */
    @:native("ColorFromNormalized")
    static function ColorFromNormalized(normalized: Vector4): Color;
    
    /**
     * Get HSV values for a Color, hue [0..360], saturation/value [0..1]
     * @return cpp: Vector3
     * @param color cpp: Color
     */
    @:native("ColorToHSV")
    static function ColorToHSV(color: Color): Vector3;
    
    /**
     * Get a Color from HSV values, hue [0..360], saturation/value [0..1]
     * @return cpp: Color
     * @param hue cpp: float
     * @param saturation cpp: float
     * @param value cpp: float
     */
    @:native("ColorFromHSV")
    static function ColorFromHSV(hue: Float, saturation: Float, value: Float): Color;
    
    /**
     * Get color multiplied with another color
     * @return cpp: Color
     * @param color cpp: Color
     * @param tint cpp: Color
     */
    @:native("ColorTint")
    static function ColorTint(color: Color, tint: Color): Color;
    
    /**
     * Get color with brightness correction, brightness factor goes from -1.0f to 1.0f
     * @return cpp: Color
     * @param color cpp: Color
     * @param factor cpp: float
     */
    @:native("ColorBrightness")
    static function ColorBrightness(color: Color, factor: Float): Color;
    
    /**
     * Get color with contrast correction, contrast values between -1.0f and 1.0f
     * @return cpp: Color
     * @param color cpp: Color
     * @param contrast cpp: float
     */
    @:native("ColorContrast")
    static function ColorContrast(color: Color, contrast: Float): Color;
    
    /**
     * Get color with alpha applied, alpha goes from 0.0f to 1.0f
     * @return cpp: Color
     * @param color cpp: Color
     * @param alpha cpp: float
     */
    @:native("ColorAlpha")
    static function ColorAlpha(color: Color, alpha: Float): Color;
    
    /**
     * Get src alpha-blended into dst color with tint
     * @return cpp: Color
     * @param dst cpp: Color
     * @param src cpp: Color
     * @param tint cpp: Color
     */
    @:native("ColorAlphaBlend")
    static function ColorAlphaBlend(dst: Color, src: Color, tint: Color): Color;
    
    /**
     * Get Color structure from hexadecimal value
     * @return cpp: Color
     * @param hexValue cpp: unsigned int
     */
    @:native("GetColor")
    static function GetColor(hexValue: cpp.UInt32): Color;
    
    /**
     * Get Color from a source pixel pointer of certain format
     * @return cpp: Color
     * @param srcPtr cpp: void *
     * @param format cpp: int
     */
    @:native("GetPixelColor")
    static function GetPixelColor(srcPtr: cpp.RawPointer<Void>, format: Int): Color;
    
    /**
     * Set color formatted into destination pixel pointer
     * @return cpp: void
     * @param dstPtr cpp: void *
     * @param color cpp: Color
     * @param format cpp: int
     */
    @:native("SetPixelColor")
    static function SetPixelColor(dstPtr: cpp.RawPointer<Void>, color: Color, format: Int): Void;
    
    /**
     * Get pixel data size in bytes for certain format
     * @return cpp: int
     * @param width cpp: int
     * @param height cpp: int
     * @param format cpp: int
     */
    @:native("GetPixelDataSize")
    static function GetPixelDataSize(width: Int, height: Int, format: Int): Int;
    
    /**
     * Get the default Font
     * @return cpp: Font
     */
    @:native("GetFontDefault")
    static function GetFontDefault(): Font;
    
    /**
     * Load font from file into GPU memory (VRAM)
     * @return cpp: Font
     * @param fileName cpp: const char *
     */
    @:native("LoadFont")
    static function LoadFont(fileName: String): Font;
    
    /**
     * Load font from file with extended parameters, use NULL for codepoints and 0 for codepointCount to load the default character setFont
     * @return cpp: Font
     * @param fileName cpp: const char *
     * @param fontSize cpp: int
     * @param codepoints cpp: int *
     * @param codepointCount cpp: int
     */
    @:native("LoadFontEx")
    static function LoadFontEx(fileName: String, fontSize: Int, codepoints: cpp.RawPointer<Int>, codepointCount: Int): Font;
    
    /**
     * Load font from Image (XNA style)
     * @return cpp: Font
     * @param image cpp: Image
     * @param key cpp: Color
     * @param firstChar cpp: int
     */
    @:native("LoadFontFromImage")
    static function LoadFontFromImage(image: Image, key: Color, firstChar: Int): Font;
    
    /**
     * Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
     * @return cpp: Font
     * @param fileType cpp: const char *
     * @param fileData cpp: const unsigned char *
     * @param dataSize cpp: int
     * @param fontSize cpp: int
     * @param codepoints cpp: int *
     * @param codepointCount cpp: int
     */
    @:native("LoadFontFromMemory")
    static function LoadFontFromMemory(fileType: String, fileData: cpp.RawPointer<cpp.UInt8>, dataSize: Int, fontSize: Int, codepoints: cpp.RawPointer<Int>, codepointCount: Int): Font;
    
    /**
     * Check if a font is ready
     * @return cpp: bool
     * @param font cpp: Font
     */
    @:native("IsFontReady")
    static function IsFontReady(font: Font): Bool;
    
    /**
     * Load font data for further use
     * @return cpp: GlyphInfo *
     * @param fileData cpp: const unsigned char *
     * @param dataSize cpp: int
     * @param fontSize cpp: int
     * @param codepoints cpp: int *
     * @param codepointCount cpp: int
     * @param type cpp: int
     */
    @:native("LoadFontData")
    static function LoadFontData(fileData: cpp.RawPointer<cpp.UInt8>, dataSize: Int, fontSize: Int, codepoints: cpp.RawPointer<Int>, codepointCount: Int, type: Int): cpp.RawPointer<GlyphInfo>;
    
    /**
     * Generate image font atlas using chars info
     * @return cpp: Image
     * @param glyphs cpp: const GlyphInfo *
     * @param glyphRecs cpp: Rectangle **
     * @param glyphCount cpp: int
     * @param fontSize cpp: int
     * @param padding cpp: int
     * @param packMethod cpp: int
     */
    @:native("GenImageFontAtlas")
    static function GenImageFontAtlas(glyphs: cpp.RawPointer<GlyphInfo>, glyphRecs: cpp.RawPointer<Rectangle>, glyphCount: Int, fontSize: Int, padding: Int, packMethod: Int): Image;
    
    /**
     * Unload font chars info data (RAM)
     * @return cpp: void
     * @param glyphs cpp: GlyphInfo *
     * @param glyphCount cpp: int
     */
    @:native("UnloadFontData")
    static function UnloadFontData(glyphs: cpp.RawPointer<GlyphInfo>, glyphCount: Int): Void;
    
    /**
     * Unload font from GPU memory (VRAM)
     * @return cpp: void
     * @param font cpp: Font
     */
    @:native("UnloadFont")
    static function UnloadFont(font: Font): Void;
    
    /**
     * Export font as code file, returns true on success
     * @return cpp: bool
     * @param font cpp: Font
     * @param fileName cpp: const char *
     */
    @:native("ExportFontAsCode")
    static function ExportFontAsCode(font: Font, fileName: String): Bool;
    
    /**
     * Draw current FPS
     * @return cpp: void
     * @param posX cpp: int
     * @param posY cpp: int
     */
    @:native("DrawFPS")
    static function DrawFPS(posX: Int, posY: Int): Void;
    
    /**
     * Draw text (using default font)
     * @return cpp: void
     * @param text cpp: const char *
     * @param posX cpp: int
     * @param posY cpp: int
     * @param fontSize cpp: int
     * @param color cpp: Color
     */
    @:native("DrawText")
    static function DrawText(text: String, posX: Int, posY: Int, fontSize: Int, color: Color): Void;
    
    /**
     * Draw text using font and additional parameters
     * @return cpp: void
     * @param font cpp: Font
     * @param text cpp: const char *
     * @param position cpp: Vector2
     * @param fontSize cpp: float
     * @param spacing cpp: float
     * @param tint cpp: Color
     */
    @:native("DrawTextEx")
    static function DrawTextEx(font: Font, text: String, position: Vector2, fontSize: Float, spacing: Float, tint: Color): Void;
    
    /**
     * Draw text using Font and pro parameters (rotation)
     * @return cpp: void
     * @param font cpp: Font
     * @param text cpp: const char *
     * @param position cpp: Vector2
     * @param origin cpp: Vector2
     * @param rotation cpp: float
     * @param fontSize cpp: float
     * @param spacing cpp: float
     * @param tint cpp: Color
     */
    @:native("DrawTextPro")
    static function DrawTextPro(font: Font, text: String, position: Vector2, origin: Vector2, rotation: Float, fontSize: Float, spacing: Float, tint: Color): Void;
    
    /**
     * Draw one character (codepoint)
     * @return cpp: void
     * @param font cpp: Font
     * @param codepoint cpp: int
     * @param position cpp: Vector2
     * @param fontSize cpp: float
     * @param tint cpp: Color
     */
    @:native("DrawTextCodepoint")
    static function DrawTextCodepoint(font: Font, codepoint: Int, position: Vector2, fontSize: Float, tint: Color): Void;
    
    /**
     * Draw multiple character (codepoint)
     * @return cpp: void
     * @param font cpp: Font
     * @param codepoints cpp: const int *
     * @param codepointCount cpp: int
     * @param position cpp: Vector2
     * @param fontSize cpp: float
     * @param spacing cpp: float
     * @param tint cpp: Color
     */
    @:native("DrawTextCodepoints")
    static function DrawTextCodepoints(font: Font, codepoints: cpp.RawPointer<Int>, codepointCount: Int, position: Vector2, fontSize: Float, spacing: Float, tint: Color): Void;
    
    /**
     * Set vertical line spacing when drawing with line-breaks
     * @return cpp: void
     * @param spacing cpp: int
     */
    @:native("SetTextLineSpacing")
    static function SetTextLineSpacing(spacing: Int): Void;
    
    /**
     * Measure string width for default font
     * @return cpp: int
     * @param text cpp: const char *
     * @param fontSize cpp: int
     */
    @:native("MeasureText")
    static function MeasureText(text: String, fontSize: Int): Int;
    
    /**
     * Measure string size for Font
     * @return cpp: Vector2
     * @param font cpp: Font
     * @param text cpp: const char *
     * @param fontSize cpp: float
     * @param spacing cpp: float
     */
    @:native("MeasureTextEx")
    static function MeasureTextEx(font: Font, text: String, fontSize: Float, spacing: Float): Vector2;
    
    /**
     * Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
     * @return cpp: int
     * @param font cpp: Font
     * @param codepoint cpp: int
     */
    @:native("GetGlyphIndex")
    static function GetGlyphIndex(font: Font, codepoint: Int): Int;
    
    /**
     * Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
     * @return cpp: GlyphInfo
     * @param font cpp: Font
     * @param codepoint cpp: int
     */
    @:native("GetGlyphInfo")
    static function GetGlyphInfo(font: Font, codepoint: Int): GlyphInfo;
    
    /**
     * Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
     * @return cpp: Rectangle
     * @param font cpp: Font
     * @param codepoint cpp: int
     */
    @:native("GetGlyphAtlasRec")
    static function GetGlyphAtlasRec(font: Font, codepoint: Int): Rectangle;
    
    /**
     * Load UTF-8 text encoded from codepoints array
     * @return cpp: char *
     * @param codepoints cpp: const int *
     * @param length cpp: int
     */
    @:native("LoadUTF8")
    static function LoadUTF8(codepoints: cpp.RawPointer<Int>, length: Int): String;
    
    /**
     * Unload UTF-8 text encoded from codepoints array
     * @return cpp: void
     * @param text cpp: char *
     */
    @:native("UnloadUTF8")
    static function UnloadUTF8(text: String): Void;
    
    /**
     * Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
     * @return cpp: int *
     * @param text cpp: const char *
     * @param count cpp: int *
     */
    @:native("LoadCodepoints")
    static function LoadCodepoints(text: String, count: cpp.RawPointer<Int>): cpp.RawPointer<Int>;
    
    /**
     * Unload codepoints data from memory
     * @return cpp: void
     * @param codepoints cpp: int *
     */
    @:native("UnloadCodepoints")
    static function UnloadCodepoints(codepoints: cpp.RawPointer<Int>): Void;
    
    /**
     * Get total number of codepoints in a UTF-8 encoded string
     * @return cpp: int
     * @param text cpp: const char *
     */
    @:native("GetCodepointCount")
    static function GetCodepointCount(text: String): Int;
    
    /**
     * Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
     * @return cpp: int
     * @param text cpp: const char *
     * @param codepointSize cpp: int *
     */
    @:native("GetCodepoint")
    static function GetCodepoint(text: String, codepointSize: cpp.RawPointer<Int>): Int;
    
    /**
     * Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
     * @return cpp: int
     * @param text cpp: const char *
     * @param codepointSize cpp: int *
     */
    @:native("GetCodepointNext")
    static function GetCodepointNext(text: String, codepointSize: cpp.RawPointer<Int>): Int;
    
    /**
     * Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
     * @return cpp: int
     * @param text cpp: const char *
     * @param codepointSize cpp: int *
     */
    @:native("GetCodepointPrevious")
    static function GetCodepointPrevious(text: String, codepointSize: cpp.RawPointer<Int>): Int;
    
    /**
     * Encode one codepoint into UTF-8 byte array (array length returned as parameter)
     * @return cpp: const char *
     * @param codepoint cpp: int
     * @param utf8Size cpp: int *
     */
    @:native("CodepointToUTF8")
    static function CodepointToUTF8(codepoint: Int, utf8Size: cpp.RawPointer<Int>): String;
    
    /**
     * Copy one string to another, returns bytes copied
     * @return cpp: int
     * @param dst cpp: char *
     * @param src cpp: const char *
     */
    @:native("TextCopy")
    static function TextCopy(dst: String, src: String): Int;
    
    /**
     * Check if two text string are equal
     * @return cpp: bool
     * @param text1 cpp: const char *
     * @param text2 cpp: const char *
     */
    @:native("TextIsEqual")
    static function TextIsEqual(text1: String, text2: String): Bool;
    
    /**
     * Get text length, checks for '\0' ending
     * @return cpp: unsigned int
     * @param text cpp: const char *
     */
    @:native("TextLength")
    static function TextLength(text: String): cpp.UInt32;
    
    /**
     * Text formatting with variables (sprintf() style)
     * @return cpp: const char *
     * @param text cpp: const char *
     * @param args cpp: ...
     */
    @:native("TextFormat")
    static function TextFormat(text: String, args: cpp.Void): String;
    
    /**
     * Get a piece of a text string
     * @return cpp: const char *
     * @param text cpp: const char *
     * @param position cpp: int
     * @param length cpp: int
     */
    @:native("TextSubtext")
    static function TextSubtext(text: String, position: Int, length: Int): String;
    
    /**
     * Replace text string (WARNING: memory must be freed!)
     * @return cpp: char *
     * @param text cpp: const char *
     * @param replace cpp: const char *
     * @param by cpp: const char *
     */
    @:native("TextReplace")
    static function TextReplace(text: String, replace: String, by: String): String;
    
    /**
     * Insert text in a position (WARNING: memory must be freed!)
     * @return cpp: char *
     * @param text cpp: const char *
     * @param insert cpp: const char *
     * @param position cpp: int
     */
    @:native("TextInsert")
    static function TextInsert(text: String, insert: String, position: Int): String;
    
    /**
     * Join text strings with delimiter
     * @return cpp: const char *
     * @param textList cpp: const char **
     * @param count cpp: int
     * @param delimiter cpp: const char *
     */
    @:native("TextJoin")
    static function TextJoin(textList: String, count: Int, delimiter: String): String;
    
    /**
     * Split text into multiple strings
     * @return cpp: const char **
     * @param text cpp: const char *
     * @param delimiter cpp: char
     * @param count cpp: int *
     */
    @:native("TextSplit")
    static function TextSplit(text: String, delimiter: cpp.Char, count: cpp.RawPointer<Int>): String;
    
    /**
     * Append text at specific position and move cursor!
     * @return cpp: void
     * @param text cpp: char *
     * @param append cpp: const char *
     * @param position cpp: int *
     */
    @:native("TextAppend")
    static function TextAppend(text: String, append: String, position: cpp.RawPointer<Int>): Void;
    
    /**
     * Find first text occurrence within a string
     * @return cpp: int
     * @param text cpp: const char *
     * @param find cpp: const char *
     */
    @:native("TextFindIndex")
    static function TextFindIndex(text: String, find: String): Int;
    
    /**
     * Get upper case version of provided string
     * @return cpp: const char *
     * @param text cpp: const char *
     */
    @:native("TextToUpper")
    static function TextToUpper(text: String): String;
    
    /**
     * Get lower case version of provided string
     * @return cpp: const char *
     * @param text cpp: const char *
     */
    @:native("TextToLower")
    static function TextToLower(text: String): String;
    
    /**
     * Get Pascal case notation version of provided string
     * @return cpp: const char *
     * @param text cpp: const char *
     */
    @:native("TextToPascal")
    static function TextToPascal(text: String): String;
    
    /**
     * Get Snake case notation version of provided string
     * @return cpp: const char *
     * @param text cpp: const char *
     */
    @:native("TextToSnake")
    static function TextToSnake(text: String): String;
    
    /**
     * Get Camel case notation version of provided string
     * @return cpp: const char *
     * @param text cpp: const char *
     */
    @:native("TextToCamel")
    static function TextToCamel(text: String): String;
    
    /**
     * Get integer value from text (negative values not supported)
     * @return cpp: int
     * @param text cpp: const char *
     */
    @:native("TextToInteger")
    static function TextToInteger(text: String): Int;
    
    /**
     * Get float value from text (negative values not supported)
     * @return cpp: float
     * @param text cpp: const char *
     */
    @:native("TextToFloat")
    static function TextToFloat(text: String): Float;
    
    /**
     * Draw a line in 3D world space
     * @return cpp: void
     * @param startPos cpp: Vector3
     * @param endPos cpp: Vector3
     * @param color cpp: Color
     */
    @:native("DrawLine3D")
    static function DrawLine3D(startPos: Vector3, endPos: Vector3, color: Color): Void;
    
    /**
     * Draw a point in 3D space, actually a small line
     * @return cpp: void
     * @param position cpp: Vector3
     * @param color cpp: Color
     */
    @:native("DrawPoint3D")
    static function DrawPoint3D(position: Vector3, color: Color): Void;
    
    /**
     * Draw a circle in 3D world space
     * @return cpp: void
     * @param center cpp: Vector3
     * @param radius cpp: float
     * @param rotationAxis cpp: Vector3
     * @param rotationAngle cpp: float
     * @param color cpp: Color
     */
    @:native("DrawCircle3D")
    static function DrawCircle3D(center: Vector3, radius: Float, rotationAxis: Vector3, rotationAngle: Float, color: Color): Void;
    
    /**
     * Draw a color-filled triangle (vertex in counter-clockwise order!)
     * @return cpp: void
     * @param v1 cpp: Vector3
     * @param v2 cpp: Vector3
     * @param v3 cpp: Vector3
     * @param color cpp: Color
     */
    @:native("DrawTriangle3D")
    static function DrawTriangle3D(v1: Vector3, v2: Vector3, v3: Vector3, color: Color): Void;
    
    /**
     * Draw a triangle strip defined by points
     * @return cpp: void
     * @param points cpp: const Vector3 *
     * @param pointCount cpp: int
     * @param color cpp: Color
     */
    @:native("DrawTriangleStrip3D")
    static function DrawTriangleStrip3D(points: cpp.RawPointer<Vector3>, pointCount: Int, color: Color): Void;
    
    /**
     * Draw cube
     * @return cpp: void
     * @param position cpp: Vector3
     * @param width cpp: float
     * @param height cpp: float
     * @param length cpp: float
     * @param color cpp: Color
     */
    @:native("DrawCube")
    static function DrawCube(position: Vector3, width: Float, height: Float, length: Float, color: Color): Void;
    
    /**
     * Draw cube (Vector version)
     * @return cpp: void
     * @param position cpp: Vector3
     * @param size cpp: Vector3
     * @param color cpp: Color
     */
    @:native("DrawCubeV")
    static function DrawCubeV(position: Vector3, size: Vector3, color: Color): Void;
    
    /**
     * Draw cube wires
     * @return cpp: void
     * @param position cpp: Vector3
     * @param width cpp: float
     * @param height cpp: float
     * @param length cpp: float
     * @param color cpp: Color
     */
    @:native("DrawCubeWires")
    static function DrawCubeWires(position: Vector3, width: Float, height: Float, length: Float, color: Color): Void;
    
    /**
     * Draw cube wires (Vector version)
     * @return cpp: void
     * @param position cpp: Vector3
     * @param size cpp: Vector3
     * @param color cpp: Color
     */
    @:native("DrawCubeWiresV")
    static function DrawCubeWiresV(position: Vector3, size: Vector3, color: Color): Void;
    
    /**
     * Draw sphere
     * @return cpp: void
     * @param centerPos cpp: Vector3
     * @param radius cpp: float
     * @param color cpp: Color
     */
    @:native("DrawSphere")
    static function DrawSphere(centerPos: Vector3, radius: Float, color: Color): Void;
    
    /**
     * Draw sphere with extended parameters
     * @return cpp: void
     * @param centerPos cpp: Vector3
     * @param radius cpp: float
     * @param rings cpp: int
     * @param slices cpp: int
     * @param color cpp: Color
     */
    @:native("DrawSphereEx")
    static function DrawSphereEx(centerPos: Vector3, radius: Float, rings: Int, slices: Int, color: Color): Void;
    
    /**
     * Draw sphere wires
     * @return cpp: void
     * @param centerPos cpp: Vector3
     * @param radius cpp: float
     * @param rings cpp: int
     * @param slices cpp: int
     * @param color cpp: Color
     */
    @:native("DrawSphereWires")
    static function DrawSphereWires(centerPos: Vector3, radius: Float, rings: Int, slices: Int, color: Color): Void;
    
    /**
     * Draw a cylinder/cone
     * @return cpp: void
     * @param position cpp: Vector3
     * @param radiusTop cpp: float
     * @param radiusBottom cpp: float
     * @param height cpp: float
     * @param slices cpp: int
     * @param color cpp: Color
     */
    @:native("DrawCylinder")
    static function DrawCylinder(position: Vector3, radiusTop: Float, radiusBottom: Float, height: Float, slices: Int, color: Color): Void;
    
    /**
     * Draw a cylinder with base at startPos and top at endPos
     * @return cpp: void
     * @param startPos cpp: Vector3
     * @param endPos cpp: Vector3
     * @param startRadius cpp: float
     * @param endRadius cpp: float
     * @param sides cpp: int
     * @param color cpp: Color
     */
    @:native("DrawCylinderEx")
    static function DrawCylinderEx(startPos: Vector3, endPos: Vector3, startRadius: Float, endRadius: Float, sides: Int, color: Color): Void;
    
    /**
     * Draw a cylinder/cone wires
     * @return cpp: void
     * @param position cpp: Vector3
     * @param radiusTop cpp: float
     * @param radiusBottom cpp: float
     * @param height cpp: float
     * @param slices cpp: int
     * @param color cpp: Color
     */
    @:native("DrawCylinderWires")
    static function DrawCylinderWires(position: Vector3, radiusTop: Float, radiusBottom: Float, height: Float, slices: Int, color: Color): Void;
    
    /**
     * Draw a cylinder wires with base at startPos and top at endPos
     * @return cpp: void
     * @param startPos cpp: Vector3
     * @param endPos cpp: Vector3
     * @param startRadius cpp: float
     * @param endRadius cpp: float
     * @param sides cpp: int
     * @param color cpp: Color
     */
    @:native("DrawCylinderWiresEx")
    static function DrawCylinderWiresEx(startPos: Vector3, endPos: Vector3, startRadius: Float, endRadius: Float, sides: Int, color: Color): Void;
    
    /**
     * Draw a capsule with the center of its sphere caps at startPos and endPos
     * @return cpp: void
     * @param startPos cpp: Vector3
     * @param endPos cpp: Vector3
     * @param radius cpp: float
     * @param slices cpp: int
     * @param rings cpp: int
     * @param color cpp: Color
     */
    @:native("DrawCapsule")
    static function DrawCapsule(startPos: Vector3, endPos: Vector3, radius: Float, slices: Int, rings: Int, color: Color): Void;
    
    /**
     * Draw capsule wireframe with the center of its sphere caps at startPos and endPos
     * @return cpp: void
     * @param startPos cpp: Vector3
     * @param endPos cpp: Vector3
     * @param radius cpp: float
     * @param slices cpp: int
     * @param rings cpp: int
     * @param color cpp: Color
     */
    @:native("DrawCapsuleWires")
    static function DrawCapsuleWires(startPos: Vector3, endPos: Vector3, radius: Float, slices: Int, rings: Int, color: Color): Void;
    
    /**
     * Draw a plane XZ
     * @return cpp: void
     * @param centerPos cpp: Vector3
     * @param size cpp: Vector2
     * @param color cpp: Color
     */
    @:native("DrawPlane")
    static function DrawPlane(centerPos: Vector3, size: Vector2, color: Color): Void;
    
    /**
     * Draw a ray line
     * @return cpp: void
     * @param ray cpp: Ray
     * @param color cpp: Color
     */
    @:native("DrawRay")
    static function DrawRay(ray: Ray, color: Color): Void;
    
    /**
     * Draw a grid (centered at (0, 0, 0))
     * @return cpp: void
     * @param slices cpp: int
     * @param spacing cpp: float
     */
    @:native("DrawGrid")
    static function DrawGrid(slices: Int, spacing: Float): Void;
    
    /**
     * Load model from files (meshes and materials)
     * @return cpp: Model
     * @param fileName cpp: const char *
     */
    @:native("LoadModel")
    static function LoadModel(fileName: String): Model;
    
    /**
     * Load model from generated mesh (default material)
     * @return cpp: Model
     * @param mesh cpp: Mesh
     */
    @:native("LoadModelFromMesh")
    static function LoadModelFromMesh(mesh: Mesh): Model;
    
    /**
     * Check if a model is ready
     * @return cpp: bool
     * @param model cpp: Model
     */
    @:native("IsModelReady")
    static function IsModelReady(model: Model): Bool;
    
    /**
     * Unload model (including meshes) from memory (RAM and/or VRAM)
     * @return cpp: void
     * @param model cpp: Model
     */
    @:native("UnloadModel")
    static function UnloadModel(model: Model): Void;
    
    /**
     * Compute model bounding box limits (considers all meshes)
     * @return cpp: BoundingBox
     * @param model cpp: Model
     */
    @:native("GetModelBoundingBox")
    static function GetModelBoundingBox(model: Model): BoundingBox;
    
    /**
     * Draw a model (with texture if set)
     * @return cpp: void
     * @param model cpp: Model
     * @param position cpp: Vector3
     * @param scale cpp: float
     * @param tint cpp: Color
     */
    @:native("DrawModel")
    static function DrawModel(model: Model, position: Vector3, scale: Float, tint: Color): Void;
    
    /**
     * Draw a model with extended parameters
     * @return cpp: void
     * @param model cpp: Model
     * @param position cpp: Vector3
     * @param rotationAxis cpp: Vector3
     * @param rotationAngle cpp: float
     * @param scale cpp: Vector3
     * @param tint cpp: Color
     */
    @:native("DrawModelEx")
    static function DrawModelEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: Float, scale: Vector3, tint: Color): Void;
    
    /**
     * Draw a model wires (with texture if set)
     * @return cpp: void
     * @param model cpp: Model
     * @param position cpp: Vector3
     * @param scale cpp: float
     * @param tint cpp: Color
     */
    @:native("DrawModelWires")
    static function DrawModelWires(model: Model, position: Vector3, scale: Float, tint: Color): Void;
    
    /**
     * Draw a model wires (with texture if set) with extended parameters
     * @return cpp: void
     * @param model cpp: Model
     * @param position cpp: Vector3
     * @param rotationAxis cpp: Vector3
     * @param rotationAngle cpp: float
     * @param scale cpp: Vector3
     * @param tint cpp: Color
     */
    @:native("DrawModelWiresEx")
    static function DrawModelWiresEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: Float, scale: Vector3, tint: Color): Void;
    
    /**
     * Draw bounding box (wires)
     * @return cpp: void
     * @param box cpp: BoundingBox
     * @param color cpp: Color
     */
    @:native("DrawBoundingBox")
    static function DrawBoundingBox(box: BoundingBox, color: Color): Void;
    
    /**
     * Draw a billboard texture
     * @return cpp: void
     * @param camera cpp: Camera
     * @param texture cpp: Texture2D
     * @param position cpp: Vector3
     * @param scale cpp: float
     * @param tint cpp: Color
     */
    @:native("DrawBillboard")
    static function DrawBillboard(camera: Camera3D, texture: Texture, position: Vector3, scale: Float, tint: Color): Void;
    
    /**
     * Draw a billboard texture defined by source
     * @return cpp: void
     * @param camera cpp: Camera
     * @param texture cpp: Texture2D
     * @param source cpp: Rectangle
     * @param position cpp: Vector3
     * @param size cpp: Vector2
     * @param tint cpp: Color
     */
    @:native("DrawBillboardRec")
    static function DrawBillboardRec(camera: Camera3D, texture: Texture, source: Rectangle, position: Vector3, size: Vector2, tint: Color): Void;
    
    /**
     * Draw a billboard texture defined by source and rotation
     * @return cpp: void
     * @param camera cpp: Camera
     * @param texture cpp: Texture2D
     * @param source cpp: Rectangle
     * @param position cpp: Vector3
     * @param up cpp: Vector3
     * @param size cpp: Vector2
     * @param origin cpp: Vector2
     * @param rotation cpp: float
     * @param tint cpp: Color
     */
    @:native("DrawBillboardPro")
    static function DrawBillboardPro(camera: Camera3D, texture: Texture, source: Rectangle, position: Vector3, up: Vector3, size: Vector2, origin: Vector2, rotation: Float, tint: Color): Void;
    
    /**
     * Upload mesh vertex data in GPU and provide VAO/VBO ids
     * @return cpp: void
     * @param mesh cpp: Mesh *
     * @param dynamic cpp: bool
     */
    @:native("UploadMesh")
    static function UploadMesh(mesh: cpp.RawPointer<Mesh>, _dynamic: Bool): Void;
    
    /**
     * Update mesh vertex data in GPU for a specific buffer index
     * @return cpp: void
     * @param mesh cpp: Mesh
     * @param index cpp: int
     * @param data cpp: const void *
     * @param dataSize cpp: int
     * @param offset cpp: int
     */
    @:native("UpdateMeshBuffer")
    static function UpdateMeshBuffer(mesh: Mesh, index: Int, data: cpp.RawPointer<Void>, dataSize: Int, offset: Int): Void;
    
    /**
     * Unload mesh data from CPU and GPU
     * @return cpp: void
     * @param mesh cpp: Mesh
     */
    @:native("UnloadMesh")
    static function UnloadMesh(mesh: Mesh): Void;
    
    /**
     * Draw a 3d mesh with material and transform
     * @return cpp: void
     * @param mesh cpp: Mesh
     * @param material cpp: Material
     * @param transform cpp: Matrix
     */
    @:native("DrawMesh")
    static function DrawMesh(mesh: Mesh, material: Material, transform: Matrix): Void;
    
    /**
     * Draw multiple mesh instances with material and different transforms
     * @return cpp: void
     * @param mesh cpp: Mesh
     * @param material cpp: Material
     * @param transforms cpp: const Matrix *
     * @param instances cpp: int
     */
    @:native("DrawMeshInstanced")
    static function DrawMeshInstanced(mesh: Mesh, material: Material, transforms: cpp.RawPointer<Matrix>, instances: Int): Void;
    
    /**
     * Compute mesh bounding box limits
     * @return cpp: BoundingBox
     * @param mesh cpp: Mesh
     */
    @:native("GetMeshBoundingBox")
    static function GetMeshBoundingBox(mesh: Mesh): BoundingBox;
    
    /**
     * Compute mesh tangents
     * @return cpp: void
     * @param mesh cpp: Mesh *
     */
    @:native("GenMeshTangents")
    static function GenMeshTangents(mesh: cpp.RawPointer<Mesh>): Void;
    
    /**
     * Export mesh data to file, returns true on success
     * @return cpp: bool
     * @param mesh cpp: Mesh
     * @param fileName cpp: const char *
     */
    @:native("ExportMesh")
    static function ExportMesh(mesh: Mesh, fileName: String): Bool;
    
    /**
     * Export mesh as code file (.h) defining multiple arrays of vertex attributes
     * @return cpp: bool
     * @param mesh cpp: Mesh
     * @param fileName cpp: const char *
     */
    @:native("ExportMeshAsCode")
    static function ExportMeshAsCode(mesh: Mesh, fileName: String): Bool;
    
    /**
     * Generate polygonal mesh
     * @return cpp: Mesh
     * @param sides cpp: int
     * @param radius cpp: float
     */
    @:native("GenMeshPoly")
    static function GenMeshPoly(sides: Int, radius: Float): Mesh;
    
    /**
     * Generate plane mesh (with subdivisions)
     * @return cpp: Mesh
     * @param width cpp: float
     * @param length cpp: float
     * @param resX cpp: int
     * @param resZ cpp: int
     */
    @:native("GenMeshPlane")
    static function GenMeshPlane(width: Float, length: Float, resX: Int, resZ: Int): Mesh;
    
    /**
     * Generate cuboid mesh
     * @return cpp: Mesh
     * @param width cpp: float
     * @param height cpp: float
     * @param length cpp: float
     */
    @:native("GenMeshCube")
    static function GenMeshCube(width: Float, height: Float, length: Float): Mesh;
    
    /**
     * Generate sphere mesh (standard sphere)
     * @return cpp: Mesh
     * @param radius cpp: float
     * @param rings cpp: int
     * @param slices cpp: int
     */
    @:native("GenMeshSphere")
    static function GenMeshSphere(radius: Float, rings: Int, slices: Int): Mesh;
    
    /**
     * Generate half-sphere mesh (no bottom cap)
     * @return cpp: Mesh
     * @param radius cpp: float
     * @param rings cpp: int
     * @param slices cpp: int
     */
    @:native("GenMeshHemiSphere")
    static function GenMeshHemiSphere(radius: Float, rings: Int, slices: Int): Mesh;
    
    /**
     * Generate cylinder mesh
     * @return cpp: Mesh
     * @param radius cpp: float
     * @param height cpp: float
     * @param slices cpp: int
     */
    @:native("GenMeshCylinder")
    static function GenMeshCylinder(radius: Float, height: Float, slices: Int): Mesh;
    
    /**
     * Generate cone/pyramid mesh
     * @return cpp: Mesh
     * @param radius cpp: float
     * @param height cpp: float
     * @param slices cpp: int
     */
    @:native("GenMeshCone")
    static function GenMeshCone(radius: Float, height: Float, slices: Int): Mesh;
    
    /**
     * Generate torus mesh
     * @return cpp: Mesh
     * @param radius cpp: float
     * @param size cpp: float
     * @param radSeg cpp: int
     * @param sides cpp: int
     */
    @:native("GenMeshTorus")
    static function GenMeshTorus(radius: Float, size: Float, radSeg: Int, sides: Int): Mesh;
    
    /**
     * Generate trefoil knot mesh
     * @return cpp: Mesh
     * @param radius cpp: float
     * @param size cpp: float
     * @param radSeg cpp: int
     * @param sides cpp: int
     */
    @:native("GenMeshKnot")
    static function GenMeshKnot(radius: Float, size: Float, radSeg: Int, sides: Int): Mesh;
    
    /**
     * Generate heightmap mesh from image data
     * @return cpp: Mesh
     * @param heightmap cpp: Image
     * @param size cpp: Vector3
     */
    @:native("GenMeshHeightmap")
    static function GenMeshHeightmap(heightmap: Image, size: Vector3): Mesh;
    
    /**
     * Generate cubes-based map mesh from image data
     * @return cpp: Mesh
     * @param cubicmap cpp: Image
     * @param cubeSize cpp: Vector3
     */
    @:native("GenMeshCubicmap")
    static function GenMeshCubicmap(cubicmap: Image, cubeSize: Vector3): Mesh;
    
    /**
     * Load materials from model file
     * @return cpp: Material *
     * @param fileName cpp: const char *
     * @param materialCount cpp: int *
     */
    @:native("LoadMaterials")
    static function LoadMaterials(fileName: String, materialCount: cpp.RawPointer<Int>): cpp.RawPointer<Material>;
    
    /**
     * Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
     * @return cpp: Material
     */
    @:native("LoadMaterialDefault")
    static function LoadMaterialDefault(): Material;
    
    /**
     * Check if a material is ready
     * @return cpp: bool
     * @param material cpp: Material
     */
    @:native("IsMaterialReady")
    static function IsMaterialReady(material: Material): Bool;
    
    /**
     * Unload material from GPU memory (VRAM)
     * @return cpp: void
     * @param material cpp: Material
     */
    @:native("UnloadMaterial")
    static function UnloadMaterial(material: Material): Void;
    
    /**
     * Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
     * @return cpp: void
     * @param material cpp: Material *
     * @param mapType cpp: int
     * @param texture cpp: Texture2D
     */
    @:native("SetMaterialTexture")
    static function SetMaterialTexture(material: cpp.RawPointer<Material>, mapType: Int, texture: Texture): Void;
    
    /**
     * Set material for a mesh
     * @return cpp: void
     * @param model cpp: Model *
     * @param meshId cpp: int
     * @param materialId cpp: int
     */
    @:native("SetModelMeshMaterial")
    static function SetModelMeshMaterial(model: cpp.RawPointer<Model>, meshId: Int, materialId: Int): Void;
    
    /**
     * Load model animations from file
     * @return cpp: ModelAnimation *
     * @param fileName cpp: const char *
     * @param animCount cpp: int *
     */
    @:native("LoadModelAnimations")
    static function LoadModelAnimations(fileName: String, animCount: cpp.RawPointer<Int>): cpp.RawPointer<ModelAnimation>;
    
    /**
     * Update model animation pose
     * @return cpp: void
     * @param model cpp: Model
     * @param anim cpp: ModelAnimation
     * @param frame cpp: int
     */
    @:native("UpdateModelAnimation")
    static function UpdateModelAnimation(model: Model, anim: ModelAnimation, frame: Int): Void;
    
    /**
     * Unload animation data
     * @return cpp: void
     * @param anim cpp: ModelAnimation
     */
    @:native("UnloadModelAnimation")
    static function UnloadModelAnimation(anim: ModelAnimation): Void;
    
    /**
     * Unload animation array data
     * @return cpp: void
     * @param animations cpp: ModelAnimation *
     * @param animCount cpp: int
     */
    @:native("UnloadModelAnimations")
    static function UnloadModelAnimations(animations: cpp.RawPointer<ModelAnimation>, animCount: Int): Void;
    
    /**
     * Check model animation skeleton match
     * @return cpp: bool
     * @param model cpp: Model
     * @param anim cpp: ModelAnimation
     */
    @:native("IsModelAnimationValid")
    static function IsModelAnimationValid(model: Model, anim: ModelAnimation): Bool;
    
    /**
     * Check collision between two spheres
     * @return cpp: bool
     * @param center1 cpp: Vector3
     * @param radius1 cpp: float
     * @param center2 cpp: Vector3
     * @param radius2 cpp: float
     */
    @:native("CheckCollisionSpheres")
    static function CheckCollisionSpheres(center1: Vector3, radius1: Float, center2: Vector3, radius2: Float): Bool;
    
    /**
     * Check collision between two bounding boxes
     * @return cpp: bool
     * @param box1 cpp: BoundingBox
     * @param box2 cpp: BoundingBox
     */
    @:native("CheckCollisionBoxes")
    static function CheckCollisionBoxes(box1: BoundingBox, box2: BoundingBox): Bool;
    
    /**
     * Check collision between box and sphere
     * @return cpp: bool
     * @param box cpp: BoundingBox
     * @param center cpp: Vector3
     * @param radius cpp: float
     */
    @:native("CheckCollisionBoxSphere")
    static function CheckCollisionBoxSphere(box: BoundingBox, center: Vector3, radius: Float): Bool;
    
    /**
     * Get collision info between ray and sphere
     * @return cpp: RayCollision
     * @param ray cpp: Ray
     * @param center cpp: Vector3
     * @param radius cpp: float
     */
    @:native("GetRayCollisionSphere")
    static function GetRayCollisionSphere(ray: Ray, center: Vector3, radius: Float): RayCollision;
    
    /**
     * Get collision info between ray and box
     * @return cpp: RayCollision
     * @param ray cpp: Ray
     * @param box cpp: BoundingBox
     */
    @:native("GetRayCollisionBox")
    static function GetRayCollisionBox(ray: Ray, box: BoundingBox): RayCollision;
    
    /**
     * Get collision info between ray and mesh
     * @return cpp: RayCollision
     * @param ray cpp: Ray
     * @param mesh cpp: Mesh
     * @param transform cpp: Matrix
     */
    @:native("GetRayCollisionMesh")
    static function GetRayCollisionMesh(ray: Ray, mesh: Mesh, transform: Matrix): RayCollision;
    
    /**
     * Get collision info between ray and triangle
     * @return cpp: RayCollision
     * @param ray cpp: Ray
     * @param p1 cpp: Vector3
     * @param p2 cpp: Vector3
     * @param p3 cpp: Vector3
     */
    @:native("GetRayCollisionTriangle")
    static function GetRayCollisionTriangle(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3): RayCollision;
    
    /**
     * Get collision info between ray and quad
     * @return cpp: RayCollision
     * @param ray cpp: Ray
     * @param p1 cpp: Vector3
     * @param p2 cpp: Vector3
     * @param p3 cpp: Vector3
     * @param p4 cpp: Vector3
     */
    @:native("GetRayCollisionQuad")
    static function GetRayCollisionQuad(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3): RayCollision;
    
    /**
     * Initialize audio device and context
     * @return cpp: void
     */
    @:native("InitAudioDevice")
    static function InitAudioDevice(): Void;
    
    /**
     * Close the audio device and context
     * @return cpp: void
     */
    @:native("CloseAudioDevice")
    static function CloseAudioDevice(): Void;
    
    /**
     * Check if audio device has been initialized successfully
     * @return cpp: bool
     */
    @:native("IsAudioDeviceReady")
    static function IsAudioDeviceReady(): Bool;
    
    /**
     * Set master volume (listener)
     * @return cpp: void
     * @param volume cpp: float
     */
    @:native("SetMasterVolume")
    static function SetMasterVolume(volume: Float): Void;
    
    /**
     * Get master volume (listener)
     * @return cpp: float
     */
    @:native("GetMasterVolume")
    static function GetMasterVolume(): Float;
    
    /**
     * Load wave data from file
     * @return cpp: Wave
     * @param fileName cpp: const char *
     */
    @:native("LoadWave")
    static function LoadWave(fileName: String): Wave;
    
    /**
     * Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
     * @return cpp: Wave
     * @param fileType cpp: const char *
     * @param fileData cpp: const unsigned char *
     * @param dataSize cpp: int
     */
    @:native("LoadWaveFromMemory")
    static function LoadWaveFromMemory(fileType: String, fileData: cpp.RawPointer<cpp.UInt8>, dataSize: Int): Wave;
    
    /**
     * Checks if wave data is ready
     * @return cpp: bool
     * @param wave cpp: Wave
     */
    @:native("IsWaveReady")
    static function IsWaveReady(wave: Wave): Bool;
    
    /**
     * Load sound from file
     * @return cpp: Sound
     * @param fileName cpp: const char *
     */
    @:native("LoadSound")
    static function LoadSound(fileName: String): Sound;
    
    /**
     * Load sound from wave data
     * @return cpp: Sound
     * @param wave cpp: Wave
     */
    @:native("LoadSoundFromWave")
    static function LoadSoundFromWave(wave: Wave): Sound;
    
    /**
     * Create a new sound that shares the same sample data as the source sound, does not own the sound data
     * @return cpp: Sound
     * @param source cpp: Sound
     */
    @:native("LoadSoundAlias")
    static function LoadSoundAlias(source: Sound): Sound;
    
    /**
     * Checks if a sound is ready
     * @return cpp: bool
     * @param sound cpp: Sound
     */
    @:native("IsSoundReady")
    static function IsSoundReady(sound: Sound): Bool;
    
    /**
     * Update sound buffer with new data
     * @return cpp: void
     * @param sound cpp: Sound
     * @param data cpp: const void *
     * @param sampleCount cpp: int
     */
    @:native("UpdateSound")
    static function UpdateSound(sound: Sound, data: cpp.RawPointer<Void>, sampleCount: Int): Void;
    
    /**
     * Unload wave data
     * @return cpp: void
     * @param wave cpp: Wave
     */
    @:native("UnloadWave")
    static function UnloadWave(wave: Wave): Void;
    
    /**
     * Unload sound
     * @return cpp: void
     * @param sound cpp: Sound
     */
    @:native("UnloadSound")
    static function UnloadSound(sound: Sound): Void;
    
    /**
     * Unload a sound alias (does not deallocate sample data)
     * @return cpp: void
     * @param alias cpp: Sound
     */
    @:native("UnloadSoundAlias")
    static function UnloadSoundAlias(alias: Sound): Void;
    
    /**
     * Export wave data to file, returns true on success
     * @return cpp: bool
     * @param wave cpp: Wave
     * @param fileName cpp: const char *
     */
    @:native("ExportWave")
    static function ExportWave(wave: Wave, fileName: String): Bool;
    
    /**
     * Export wave sample data to code (.h), returns true on success
     * @return cpp: bool
     * @param wave cpp: Wave
     * @param fileName cpp: const char *
     */
    @:native("ExportWaveAsCode")
    static function ExportWaveAsCode(wave: Wave, fileName: String): Bool;
    
    /**
     * Play a sound
     * @return cpp: void
     * @param sound cpp: Sound
     */
    @:native("PlaySound")
    static function PlaySound(sound: Sound): Void;
    
    /**
     * Stop playing a sound
     * @return cpp: void
     * @param sound cpp: Sound
     */
    @:native("StopSound")
    static function StopSound(sound: Sound): Void;
    
    /**
     * Pause a sound
     * @return cpp: void
     * @param sound cpp: Sound
     */
    @:native("PauseSound")
    static function PauseSound(sound: Sound): Void;
    
    /**
     * Resume a paused sound
     * @return cpp: void
     * @param sound cpp: Sound
     */
    @:native("ResumeSound")
    static function ResumeSound(sound: Sound): Void;
    
    /**
     * Check if a sound is currently playing
     * @return cpp: bool
     * @param sound cpp: Sound
     */
    @:native("IsSoundPlaying")
    static function IsSoundPlaying(sound: Sound): Bool;
    
    /**
     * Set volume for a sound (1.0 is max level)
     * @return cpp: void
     * @param sound cpp: Sound
     * @param volume cpp: float
     */
    @:native("SetSoundVolume")
    static function SetSoundVolume(sound: Sound, volume: Float): Void;
    
    /**
     * Set pitch for a sound (1.0 is base level)
     * @return cpp: void
     * @param sound cpp: Sound
     * @param pitch cpp: float
     */
    @:native("SetSoundPitch")
    static function SetSoundPitch(sound: Sound, pitch: Float): Void;
    
    /**
     * Set pan for a sound (0.5 is center)
     * @return cpp: void
     * @param sound cpp: Sound
     * @param pan cpp: float
     */
    @:native("SetSoundPan")
    static function SetSoundPan(sound: Sound, pan: Float): Void;
    
    /**
     * Copy a wave to a new wave
     * @return cpp: Wave
     * @param wave cpp: Wave
     */
    @:native("WaveCopy")
    static function WaveCopy(wave: Wave): Wave;
    
    /**
     * Crop a wave to defined frames range
     * @return cpp: void
     * @param wave cpp: Wave *
     * @param initFrame cpp: int
     * @param finalFrame cpp: int
     */
    @:native("WaveCrop")
    static function WaveCrop(wave: cpp.RawPointer<Wave>, initFrame: Int, finalFrame: Int): Void;
    
    /**
     * Convert wave data to desired format
     * @return cpp: void
     * @param wave cpp: Wave *
     * @param sampleRate cpp: int
     * @param sampleSize cpp: int
     * @param channels cpp: int
     */
    @:native("WaveFormat")
    static function WaveFormat(wave: cpp.RawPointer<Wave>, sampleRate: Int, sampleSize: Int, channels: Int): Void;
    
    /**
     * Load samples data from wave as a 32bit float data array
     * @return cpp: float *
     * @param wave cpp: Wave
     */
    @:native("LoadWaveSamples")
    static function LoadWaveSamples(wave: Wave): cpp.RawPointer<Float>;
    
    /**
     * Unload samples data loaded with LoadWaveSamples()
     * @return cpp: void
     * @param samples cpp: float *
     */
    @:native("UnloadWaveSamples")
    static function UnloadWaveSamples(samples: cpp.RawPointer<Float>): Void;
    
    /**
     * Load music stream from file
     * @return cpp: Music
     * @param fileName cpp: const char *
     */
    @:native("LoadMusicStream")
    static function LoadMusicStream(fileName: String): Music;
    
    /**
     * Load music stream from data
     * @return cpp: Music
     * @param fileType cpp: const char *
     * @param data cpp: const unsigned char *
     * @param dataSize cpp: int
     */
    @:native("LoadMusicStreamFromMemory")
    static function LoadMusicStreamFromMemory(fileType: String, data: cpp.RawPointer<cpp.UInt8>, dataSize: Int): Music;
    
    /**
     * Checks if a music stream is ready
     * @return cpp: bool
     * @param music cpp: Music
     */
    @:native("IsMusicReady")
    static function IsMusicReady(music: Music): Bool;
    
    /**
     * Unload music stream
     * @return cpp: void
     * @param music cpp: Music
     */
    @:native("UnloadMusicStream")
    static function UnloadMusicStream(music: Music): Void;
    
    /**
     * Start music playing
     * @return cpp: void
     * @param music cpp: Music
     */
    @:native("PlayMusicStream")
    static function PlayMusicStream(music: Music): Void;
    
    /**
     * Check if music is playing
     * @return cpp: bool
     * @param music cpp: Music
     */
    @:native("IsMusicStreamPlaying")
    static function IsMusicStreamPlaying(music: Music): Bool;
    
    /**
     * Updates buffers for music streaming
     * @return cpp: void
     * @param music cpp: Music
     */
    @:native("UpdateMusicStream")
    static function UpdateMusicStream(music: Music): Void;
    
    /**
     * Stop music playing
     * @return cpp: void
     * @param music cpp: Music
     */
    @:native("StopMusicStream")
    static function StopMusicStream(music: Music): Void;
    
    /**
     * Pause music playing
     * @return cpp: void
     * @param music cpp: Music
     */
    @:native("PauseMusicStream")
    static function PauseMusicStream(music: Music): Void;
    
    /**
     * Resume playing paused music
     * @return cpp: void
     * @param music cpp: Music
     */
    @:native("ResumeMusicStream")
    static function ResumeMusicStream(music: Music): Void;
    
    /**
     * Seek music to a position (in seconds)
     * @return cpp: void
     * @param music cpp: Music
     * @param position cpp: float
     */
    @:native("SeekMusicStream")
    static function SeekMusicStream(music: Music, position: Float): Void;
    
    /**
     * Set volume for music (1.0 is max level)
     * @return cpp: void
     * @param music cpp: Music
     * @param volume cpp: float
     */
    @:native("SetMusicVolume")
    static function SetMusicVolume(music: Music, volume: Float): Void;
    
    /**
     * Set pitch for a music (1.0 is base level)
     * @return cpp: void
     * @param music cpp: Music
     * @param pitch cpp: float
     */
    @:native("SetMusicPitch")
    static function SetMusicPitch(music: Music, pitch: Float): Void;
    
    /**
     * Set pan for a music (0.5 is center)
     * @return cpp: void
     * @param music cpp: Music
     * @param pan cpp: float
     */
    @:native("SetMusicPan")
    static function SetMusicPan(music: Music, pan: Float): Void;
    
    /**
     * Get music time length (in seconds)
     * @return cpp: float
     * @param music cpp: Music
     */
    @:native("GetMusicTimeLength")
    static function GetMusicTimeLength(music: Music): Float;
    
    /**
     * Get current music time played (in seconds)
     * @return cpp: float
     * @param music cpp: Music
     */
    @:native("GetMusicTimePlayed")
    static function GetMusicTimePlayed(music: Music): Float;
    
    /**
     * Load audio stream (to stream raw audio pcm data)
     * @return cpp: AudioStream
     * @param sampleRate cpp: unsigned int
     * @param sampleSize cpp: unsigned int
     * @param channels cpp: unsigned int
     */
    @:native("LoadAudioStream")
    static function LoadAudioStream(sampleRate: cpp.UInt32, sampleSize: cpp.UInt32, channels: cpp.UInt32): AudioStream;
    
    /**
     * Checks if an audio stream is ready
     * @return cpp: bool
     * @param stream cpp: AudioStream
     */
    @:native("IsAudioStreamReady")
    static function IsAudioStreamReady(stream: AudioStream): Bool;
    
    /**
     * Unload audio stream and free memory
     * @return cpp: void
     * @param stream cpp: AudioStream
     */
    @:native("UnloadAudioStream")
    static function UnloadAudioStream(stream: AudioStream): Void;
    
    /**
     * Update audio stream buffers with data
     * @return cpp: void
     * @param stream cpp: AudioStream
     * @param data cpp: const void *
     * @param frameCount cpp: int
     */
    @:native("UpdateAudioStream")
    static function UpdateAudioStream(stream: AudioStream, data: cpp.RawPointer<Void>, frameCount: Int): Void;
    
    /**
     * Check if any audio stream buffers requires refill
     * @return cpp: bool
     * @param stream cpp: AudioStream
     */
    @:native("IsAudioStreamProcessed")
    static function IsAudioStreamProcessed(stream: AudioStream): Bool;
    
    /**
     * Play audio stream
     * @return cpp: void
     * @param stream cpp: AudioStream
     */
    @:native("PlayAudioStream")
    static function PlayAudioStream(stream: AudioStream): Void;
    
    /**
     * Pause audio stream
     * @return cpp: void
     * @param stream cpp: AudioStream
     */
    @:native("PauseAudioStream")
    static function PauseAudioStream(stream: AudioStream): Void;
    
    /**
     * Resume audio stream
     * @return cpp: void
     * @param stream cpp: AudioStream
     */
    @:native("ResumeAudioStream")
    static function ResumeAudioStream(stream: AudioStream): Void;
    
    /**
     * Check if audio stream is playing
     * @return cpp: bool
     * @param stream cpp: AudioStream
     */
    @:native("IsAudioStreamPlaying")
    static function IsAudioStreamPlaying(stream: AudioStream): Bool;
    
    /**
     * Stop audio stream
     * @return cpp: void
     * @param stream cpp: AudioStream
     */
    @:native("StopAudioStream")
    static function StopAudioStream(stream: AudioStream): Void;
    
    /**
     * Set volume for audio stream (1.0 is max level)
     * @return cpp: void
     * @param stream cpp: AudioStream
     * @param volume cpp: float
     */
    @:native("SetAudioStreamVolume")
    static function SetAudioStreamVolume(stream: AudioStream, volume: Float): Void;
    
    /**
     * Set pitch for audio stream (1.0 is base level)
     * @return cpp: void
     * @param stream cpp: AudioStream
     * @param pitch cpp: float
     */
    @:native("SetAudioStreamPitch")
    static function SetAudioStreamPitch(stream: AudioStream, pitch: Float): Void;
    
    /**
     * Set pan for audio stream (0.5 is centered)
     * @return cpp: void
     * @param stream cpp: AudioStream
     * @param pan cpp: float
     */
    @:native("SetAudioStreamPan")
    static function SetAudioStreamPan(stream: AudioStream, pan: Float): Void;
    
    /**
     * Default size for new audio streams
     * @return cpp: void
     * @param size cpp: int
     */
    @:native("SetAudioStreamBufferSizeDefault")
    static function SetAudioStreamBufferSizeDefault(size: Int): Void;
    
    /**
     * Audio thread callback to request new data
     * @return cpp: void
     * @param stream cpp: AudioStream
     * @param callback cpp: AudioCallback
     */
    @:native("SetAudioStreamCallback")
    static function SetAudioStreamCallback(stream: AudioStream, callback: cpp.Void): Void;
    
    /**
     * Attach audio stream processor to stream, receives the samples as 'float'
     * @return cpp: void
     * @param stream cpp: AudioStream
     * @param processor cpp: AudioCallback
     */
    @:native("AttachAudioStreamProcessor")
    static function AttachAudioStreamProcessor(stream: AudioStream, processor: cpp.Void): Void;
    
    /**
     * Detach audio stream processor from stream
     * @return cpp: void
     * @param stream cpp: AudioStream
     * @param processor cpp: AudioCallback
     */
    @:native("DetachAudioStreamProcessor")
    static function DetachAudioStreamProcessor(stream: AudioStream, processor: cpp.Void): Void;
    
    /**
     * Attach audio stream processor to the entire audio pipeline, receives the samples as 'float'
     * @return cpp: void
     * @param processor cpp: AudioCallback
     */
    @:native("AttachAudioMixedProcessor")
    static function AttachAudioMixedProcessor(processor: cpp.Void): Void;
    
    /**
     * Detach audio stream processor from the entire audio pipeline
     * @return cpp: void
     * @param processor cpp: AudioCallback
     */
    @:native("DetachAudioMixedProcessor")
    static function DetachAudioMixedProcessor(processor: cpp.Void): Void;
    
}
