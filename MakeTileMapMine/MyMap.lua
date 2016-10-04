function CreateMap1()
    return {
      version = "1.1",
      luaversion = "5.1",
      tiledversion = "0.17.0",
      orientation = "orthogonal",
      renderorder = "right-down",
      width = 16,
      height = 14,
      tilewidth = 32,
      tileheight = 32,
      nextobjectid = 1,
      properties = {},
      tilesets = {
        {
          name = "asdf",
          firstgid = 1,
          tilewidth = 32,
          tileheight = 32,
          spacing = 0,
          margin = 0,
          image = "../../../DinoDeck/MapTile.png",
          imagewidth = 736,
          imageheight = 928,
          tileoffset = {
            x = 0,
            y = 0
          },
          properties = {},
          terrains = {},
          tilecount = 667,
          tiles = {}
        }
      },
      layers = {
        {
          type = "tilelayer",
          name = "Tile Layer 1",
          x = 0,
          y = 0,
          width = 16,
          height = 14,
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          properties = {},
          encoding = "base64",
          compression = "zlib",
          data = "eJwzYGBgMMCC+4C4HwlPwKEOFx7VP6p/VD9h/QBTGUP7"
        }
      }
    }
end
