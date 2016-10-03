LoadLibrary("Renderer")
LoadLibrary("Sprite")
LoadLibrary("Texture")

gRenderer = Renderer:Create()

gTileSprite = Sprite:Create()
gTileSprite:SetTexture(Texture.Find("uv_example.png"))

gTileSprite:SetUVs(0.5, 0.5, 1, 1)
--gTileSprite:SetUVs(0.25,0.25,0.75,0.75) -- draws half the image from the center
function update()
    gRenderer:DrawSprite(gTileSprite)
end
