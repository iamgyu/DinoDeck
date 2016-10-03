LoadLibrary("Renderer")
LoadLibrary("Sprite")
LoadLibrary("Texture")

gRenderer = Renderer:Create()

gTileSprite = Sprite:Create()
gTileSprite:SetTexture(Texture.Find("uv_example.png"))

gTileSprite:SetUVs(0, 0, 1, 1)

function update()
    gRenderer:DrawSprite(gTileSprite)
end
