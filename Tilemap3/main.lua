LoadLibrary("Renderer")
LoadLibrary("System")
LoadLibrary("Sprite")
LoadLibrary("Texture")

gRenderer = Renderer.Create()
gLeft = -System.ScreenWidth() / 2
gTop = System.ScreenHeight() / 2

gTileSprite = Sprite.Create()
gTileSprite:SetTexture(Texture.Find("grass_tile.png"))
gTileSprite:SetPosition(gLeft, gTop)

function update()
    gRenderer:DrawSprite(gTileSprite)
end
