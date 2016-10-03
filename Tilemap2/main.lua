LoadLibrary("Renderer")
LoadLibrary("System")
LoadLibrary("Vector")

gRenderer = Renderer.Create()
gLeft = -System.ScreenWidth() / 2
gTop = System.ScreenHeight() / 2

gRed = Vector.Create(1, 0, 0, 1)

function update()
    gRenderer:DrawRect2d(gLeft, gTop - 1, gLeft + 1, gTop, gRed)
end
