local io = io
local math = math
local beautiful = require("beautiful")
local naughty = require("naughty")
local wibox = require("wibox")
local awful = require("awful")
local tonumber = tonumber
local tostring = tostring
local print = print
local pairs = pairs

module("battery")

local limits = {{25, 5},
          {12, 3},
          { 7, 1},
            {0}}

function get_bat_state (adapter)
    local fcur = io.open("/sys/class/power_supply/"..adapter.."/energy_now")
    local fcap = io.open("/sys/class/power_supply/"..adapter.."/energy_full")
    local fsta = io.open("/sys/class/power_supply/"..adapter.."/status")
    local facp = io.popen("acpi -b")
    local cur = fcur:read()
    local cap = fcap:read()
    local sta = fsta:read()
    local acp = facp:read()
    fcur:close()
    fcap:close()
    fsta:close()
    facp:close()
    local battery = math.floor(cur * 100 / cap)
    local idx
    local time 
    if sta:match("Charging") then
        dir = 1
	idx = acp:find('until charged')
        time = acp:sub(idx - 8, idx - 5).." until charged"
    elseif sta:match("Discharging") then
        dir = -1
	idx = acp:find('remaining')
        time = acp:sub(idx - 8, idx - 5).." remaining"
    else
        dir = 0
        battery = ""
        time = ""
    end
    return battery, dir, time
end

function getnextlim (num)
    for ind, pair in pairs(limits) do
        lim = pair[1]; step = pair[2]; nextlim = limits[ind+1][1] or 0
        if num > nextlim then
            repeat
                lim = lim - step
            until num > lim
            if lim < nextlim then
                lim = nextlim
            end
            return lim
        end
    end
end


function batclosure (adapter, widget, tooltip)
    local nextlim = limits[1][1]
    return function ()
        local prefix = ""
        local suffix = " ⚡ |"
        local battery, dir, time = get_bat_state(adapter)
        if dir == -1 then
            dirsign = " ▾ "
            suffix = " |"
            if battery <= nextlim then
                naughty.notify({title = "Battery charge is low!",
                            text = time.." ⚡ "..battery.."%",
                            timeout = 7,
                            fg = beautiful.fg_focus,
                            bg = beautiful.bg_focus
                            })
                nextlim = getnextlim(battery)
            end
        elseif dir == 1 then
            dirsign = " ▴ "
            nextlim = limits[1][1]
        else
            dirsign = ""
        end
        if dir ~= 0 then battery = battery.."%" end
        widget:set_text(" bat:"..dirsign..battery..suffix)
        tooltip:set_text("\n  "..time.."  \n")
        return " "..prefix.." "..dirsign.." "..battery.." "..suffix
    end
end

function batwidget (adapter, timer)
    local widget = wibox.widget.textbox()
    local tooltip = awful.tooltip({ objects = { widget },})	
    
    textsetter = batclosure(adapter, widget, tooltip)
    
    textsetter()
    timer:connect_signal("timeout", function() textsetter() end)
    timer:start()

    return widget
end
