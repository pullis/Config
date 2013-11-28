--[[                                        ]]--
----                                          -
----    Blackburn Awesome WM 3.5.+ theme      --
----       github.com/copycat-killer          --
----                                          -
----[[                                      ]]--


theme = {}

themes_dir                                  = os.getenv("HOME") .. "/.config/awesome/themes/blackburn"
--theme.wallpaper                             = themes_dir .. "/wall.png"

theme.font                                  = "DejaVu Sans 9"
theme.fg_normal                             = "#aaaaaa"
theme.fg_focus                              = "#d79d38"
theme.fg_urgent                             = "#CC9393"
theme.bg_normal                             = "#000000"
theme.bg_focus                              = "#000000"
theme.bg_urgent                             = "#2a1f1e"
theme.border_width                          = "0"
theme.border_normal                         = "#101010"
theme.border_focus                          = "#FFFFFF"
theme.border_marked                         = "#CC9393"
--theme.border_width = "2"
--theme.border_normal = "#222222"
--theme.border_focus = "#A6000A"
--theme.border_marked = "#91231c"
theme.titlebar_bg_focus                     = "#FFFFFF"
theme.titlebar_bg_normal                    = "#FFFFFF"
theme.taglist_fg_focus                      = "#f6784f"
theme.tasklist_bg_focus                     = "#000000"
theme.tasklist_fg_focus                     = "#f6784f"
theme.textbox_widget_margin_top             = 1
theme.notify_fg                             = theme.fg_normal
theme.notify_bg                             = theme.bg_normal
theme.notify_border                         = theme.border_focus
theme.awful_widget_height                   = 14
theme.awful_widget_margin_top               = 2
theme.mouse_finder_color                    = "#CC9393"
theme.menu_height                           = "24"
theme.menu_width                            = "190"

theme.menu_submenu_icon                     = themes_dir .. "/icons/submenu.png"
theme.taglist_squares_sel                   = themes_dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                 = themes_dir .. "/icons/square_unsel.png"

theme.layout_tile                           = themes_dir .. "/icons/tile.png"
theme.layout_tileleft                       = themes_dir .. "/icons/tileleft.png"
theme.layout_tilebottom                     = themes_dir .. "/icons/tilebottom.png"
theme.layout_tiletop                        = themes_dir .. "/icons/tiletop.png"
theme.layout_fairv                          = themes_dir .. "/icons/fairv.png"
theme.layout_fairh                          = themes_dir .. "/icons/fairh.png"
theme.layout_spiral                         = themes_dir .. "/icons/spiral.png"
theme.layout_dwindle                        = themes_dir .. "/icons/dwindle.png"
theme.layout_max                            = themes_dir .. "/icons/max.png"
theme.layout_fullscreen                     = themes_dir .. "/icons/fullscreen.png"
theme.layout_magnifier                      = themes_dir .. "/icons/magnifier.png"
theme.layout_floating                       = themes_dir .. "/icons/floating.png"
theme.tasklist_floating                     = ""
theme.tasklist_maximized_horizontal         = ""
theme.tasklist_maximized_vertical           = "" 

theme.widget_mail_notify                    = themes_dir .. "/icons/mail_notify.png"
theme.widget_no_net_notify                  = themes_dir .. "/icons/no_net_notify.png"
theme.widget_netdown   			    = themes_dir .. "/icons/net_down.png"
theme.widget_netup      		    = themes_dir .. "/icons/net_up.png"

theme.menu_submenu_icon = "/usr/share/awesome/themes/default/submenu.png"

--set the spacing between tiled windows to 20px
theme.useless_gap_width = "20"
--set the height of the lowest window of the second column to 72; setting to zero makes all the slave windows the same height
theme.lower_window_height = "72"
--set your vertical resolution
theme.vertical_resolution = "1080"
--set the extra vertical spacing to 8px
theme.vertical_border = "8"
--set the extra outermost spacing to 18px
theme.outer_padding = "18"




return theme
