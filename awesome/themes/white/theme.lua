---------------------------
-- Default awesome theme --
---------------------------

theme = {}

theme.useless_gap_width = 8

theme.font          = "clean 8"

dir = "/home/oed/.config/awesome/themes/white/"
-- theme.bg_normal     = "png:" .. dir .. "normal.png"
theme.bg_normal     = "#fdf6e3"
theme.bg_focus      = "#555753"
theme.bg_urgent     = "png:" .. dir .. "urgent.png"
theme.bg_minimize   = "png:" .. dir .. "minimize.png"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#586e75"
theme.fg_focus      = "#268bd2"
theme.fg_urgent     = "#dc322f"
theme.fg_minimize   = "#002b36"

theme.border_width  = 3
--theme.border_normal = "#555753"
--theme.border_normal = "#fdf6e3"
theme.border_normal = "#002b36"
theme.border_focus  = "#fdf6e3"
--theme.border_focus  = "#268bd2"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
theme.taglist_bg_focus = "png:" .. dir .. "focus.png"
theme.tasklist_bg_focus = "png:" .. dir .. "focus.png"

theme.tooltip_bg_color = theme.bg_normal
theme.tooltip_border_width = 1
theme.tooltip_border_color = theme.border_focus
theme.tooltip_opacity = 0.8
theme.tooltip_fg_color = theme.fg_normal

-- Display the taglist squares
theme.taglist_squares_sel   = dir .. "taglist/squarefw.png"
theme.taglist_squares_unsel = dir .. "taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = dir .. "submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = dir .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus  = dir .. "titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = dir .. "titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = dir .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = dir .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = dir .. "titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = dir .. "titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = dir .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = dir .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = dir .. "titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = dir .. "titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = dir .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = dir .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = dir .. "titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = dir .. "titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = dir .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = dir .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = dir .. "titlebar/maximized_focus_active.png"

--theme.wallpaper = dir .. "77words_patternfever_16.gif"
--theme.wallpaper = dir .. "background3.jpg"
--theme.wallpaper = dir .. "background-dark.jpg"
--theme.wallpaper = dir .. "earth.jpg"
theme.wallpaper = dir .. "cube.png"

-- You can use your own layout icons like this:
theme.layout_fairh = dir .. "layouts/fairh.png"
theme.layout_fairv = dir .. "layouts/fairv.png"
theme.layout_floating  = dir .. "layouts/floating.png"
theme.layout_magnifier = dir .. "layouts/magnifier.png"
theme.layout_max = dir .. "layouts/max.png"
theme.layout_fullscreen = dir .. "layouts/fullscreen.png"
theme.layout_tilebottom = dir .. "layouts/tilebottom.png"
theme.layout_tileleft   = dir .. "layouts/tileleft.png"
theme.layout_tile = dir .. "layouts/tile.png"
theme.layout_tiletop = dir .. "layouts/tiletop.png"
theme.layout_spiral  = dir .. "layouts/spiral.png"
theme.layout_dwindle = dir .. "layouts/dwindle.png"
-- Custom layout icons
theme.layout_browse = dir .. "layouts/browse.png"
theme.layout_uselesstilebottom = dir .. "layouts/tilebottom.png"
theme.layout_uselesstileleft   = dir .. "layouts/tileleft.png"
theme.layout_uselesstile = dir .. "layouts/tile.png"
theme.layout_uselesstiletop = dir .. "layouts/tiletop.png"


-- Define the icon theme for application icons. If not set then the icons 
-- from /home/oed/.config/icons and /home/oed/.config/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
