import Raylib.*;

class Main {

    public static function main() {
        InitWindow(800, 450, "Raylib [hx] example - basic window");
        SetTargetFPS(60);

        while (!WindowShouldClose()) {
            BeginDrawing();
            ClearBackground(RAYWHITE);
            DrawText("Congrats! You created your first window!", 190, 200, 20, LIGHTGRAY);
            EndDrawing();
        }

        CloseWindow();
    }

}