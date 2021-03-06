-- citrus, an awesome 3 theme by Tyler Compton

--{{{ Main
local awful = require("awful")
awful.util = require("awful.util")

theme = {}

home          = os.getenv("HOME")
config        = awful.util.getdir("config")
shared        = "/usr/share/awesome"
if not awful.util.file_readable(shared .. "/icons/awesome16.png") then
    shared    = "/usr/share/local/awesome"
end
sharedicons   = shared .. "/icons"
sharedthemes  = shared .. "/themes"
themes        = config .. "/themes"
themename     = "/citrus"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
       themes = sharedthemes
end
themedir      = themes .. themename

wallpaper1    = themes .. themename .. "/background.jpg"
wallpaper2    = themes .. themename .. "/background.png"
wallpaper3    = sharedthemes .. "/zenburn/zenburn-background.png"
wallpaper4    = sharedthemes .. "/default/background.png"
wpscript      = home .. "/.wallpaper"

if awful.util.file_readable(wallpaper1) then
  theme.wallpaper = wallpaper1
elseif awful.util.file_readable(wallpaper2) then
  theme.wallpaper = wallpaper2
elseif awful.util.file_readable(wpscript) then
  theme.wallpaper_cmd = { "sh " .. wpscript }
elseif awful.util.file_readable(wallpaper3) then
  theme.wallpaper = wallpaper3
else
  theme.wallpaper = wallpaper4
end
--}}}

--theme.font          = "-artwiz-cure-*-r-normal-*-*-*-*-*-*-*-iso8859-1"
theme.font          = "cure 10"

theme.bg_normal     = "#262729"
theme.bg_focus      = "#262729"
theme.bg_urgent     = "#262729"
theme.bg_minimize   = "#262729"

theme.fg_normal     = "#fafafa"
theme.fg_focus      = "#ff6d00"
theme.fg_urgent     = "#f03669"
theme.fg_minimize   = "#fafafa"

theme.border_width  = "0"
theme.border_normal = "#262729"
theme.border_focus  = "#659fdb"
theme.border_marked = "#91231c"

-- Display the taglist squares
theme.taglist_squares_sel   = themedir .. "/taglist/focus.png"
theme.taglist_squares_unsel = themedir .. "/taglist/unfocus.png"

-- Awesome icon
theme.awesome_icon = themedir .. "/awesome-icon.png"

-- Layout icons
theme.layout_fairh = themedir .. "/layouts/fairh.png"
theme.layout_fairv = themedir .. "/layouts/fairv.png"
theme.layout_floating  = themedir .. "/layouts/floating.png"
theme.layout_magnifier = themedir .. "/layouts/magnifier.png"
theme.layout_max = themedir .. "/layouts/max.png"
theme.layout_fullscreen = themedir .. "/layouts/fullscreen.png"
theme.layout_tilebottom = themedir .. "/layouts/tilebottom.png"
theme.layout_tileleft   = themedir .. "/layouts/tileleft.png"
theme.layout_tile = themedir .. "/layouts/tile.png"
theme.layout_tiletop = themedir .. "/layouts/tiletop.png"
theme.layout_spiral  = themedir .. "/layouts/spiral.png"
theme.layout_dwindle = themedir .. "/layouts/dwindle.png"

return theme

