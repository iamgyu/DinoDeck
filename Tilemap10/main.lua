LoadLibrary("Renderer")
LoadLibrary("Sprite")
LoadLibrary("System")
LoadLibrary("Texture")
LoadLibrary("Keyboard")
LoadLibrary("Vector")

gTextureAtlas = Texture.Find("atlas.png")

function GenerateUVsForTiles(texture, tileSize)

      local uvs = {}

      local textureWidth = texture:GetWidth()
      local textureHeight = texture:GetHeight()
      local width = tileSize / textureWidth
      local height = tileSize / textureHeight
      local cols = textureWidth / tileSize
      local rows = textureHeight / tileSize

      local u0 = 0
      local v0 = 0
      local u1 = width
      local v1 = height

      for j = 0, rows - 1 do
          for i = 0, cols - 1 do
              table.insert(uvs, {u0, v0, u1, v1})
              u0 = u0 + width
              u1 = u1 + width
          end
          u0 = 0
          u1 = width
          v0 = v0 + height
          v1 = v1 + height
      end
      return uvs
end

local uvs = GenerateUVsForTiles(gTextureAtlas, 32)

for i = 1, 11 do
    print(i, unpack(uvs[i]))
end

gMap =
{
    1,1,1,1,5,6,7,1,
    1,1,1,1,5,6,7,1,
    1,1,1,1,5,6,7,1,
    3,3,3,3,11,6,7,1,
    9,9,9,9,9,9,10,1,
    1,1,1,1,1,1,1,1,
    1,1,1,1,1,1,2,3,
}

gMapWidth = 8
gMapHeight = 7

gTileWidth = 32
gTileHeight = 32

gDisplayWidth = System.ScreenWidth()
gDisplayHeight = System.ScreenHeight()

gTop = gDisplayHeight / 2 - gTileHeight / 2
gLeft = -gDisplayWidth / 2 + gTileWidth / 2

function GetTile(map, rowsize, x, y)
    x = x + 1
    return map[x + y * rowsize]
end

gRenderer = Renderer.Create()

gTileSprite = Sprite.Create()
gTileSprite:SetTexture(gTextureAtlas)

local tileIndex = 1
local maxTiles = 11

function update()

    if Keyboard.JustReleased(KEY_LEFT) then
        tileIndex = tileIndex - 1
        if tileIndex <= 0 then
            tileIndex = 1
        end
    elseif Keyboard.JustReleased(KEY_RIGHT) then
        tileIndex = tileIndex + 1
        if tileIndex > maxTiles then
            tileIndex = maxTiles
        end
    end

    gTileSprite:SetUVs(unpack(uvs[tileIndex]))
    gRenderer:DrawSprite(gTileSprite)

    gRenderer:AlignText("center", "center")
    gRenderer:DrawText2d(0, 100, "Press left and right arrows to browse tiles",
                        Vector.Create(1,1,1,1), 200)
    gRenderer:DrawText2d(0, -42, "Tile: " .. tileIndex,
                        Vector.Create(1,1,1,1), 200)
end
