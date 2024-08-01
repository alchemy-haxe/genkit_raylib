import cpp.RawPointer;
import haxe.io.Path;

import Raylib.*;
import MaterialMapIndex.*;
import CameraProjection.*;
import CameraMode.*;

class Main {

    public static function main() {
        InitWindow(800, 450, "Raylib [hx] example - heightmap");
        
        var camera = Camera3D.create(
            Vector3.create(18.0, 21.0, 18.0),
            Vector3.create(0.0, 0.0, 0.0),
            Vector3.create(0.0, 1.0, 0.0),
            45.0,
            CAMERA_PERSPECTIVE
        );

        var image = LoadImage(Path.join([ Path.directory(Sys.programPath()), 'heightmap.png' ]));
        var texture = LoadTextureFromImage(image);
        var mesh = GenMeshHeightmap(image, Vector3.create(16, 8, 16));
        var model = LoadModelFromMesh(mesh);

        model.materials[0].maps[MATERIAL_MAP_ALBEDO].texture = texture;
        var mapPosition = Vector3.create(-8.0, 0.0, -8.0);

        UnloadImage(image);
        SetTargetFPS(60);

        while (!WindowShouldClose()) {
            UpdateCamera(RawPointer.addressOf(camera), CAMERA_ORBITAL);
            
            BeginDrawing();
                ClearBackground(RAYWHITE);
                BeginMode3D(camera);
                    DrawModel(model, mapPosition, 1.0, RED);
                    DrawGrid(20, 1.0);
                EndMode3D();

                DrawTexture(texture, GetScreenWidth() - texture.width - 20, 20, WHITE);
                DrawRectangleLines(GetScreenWidth() - texture.width - 20, 20, texture.width, texture.height, GREEN);
                DrawFPS(10, 10);
            EndDrawing();
        }

        UnloadTexture(texture);
        UnloadModel(model);

        CloseWindow();
    }

}