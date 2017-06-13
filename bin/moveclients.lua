awful = require("awful")

first = nil
fromfirst = false

awful.screen.connect_for_each_screen(function(s)
    if (s.index == 1) then
        first = s
        for _,c in pairs(s.all_clients) do
            fromfirst = true
            tagidx = c.first_tag.index
            moveto = c.screen.index+1
            if not (tagidx == 1 or tagidx == 9 or tagidx == 10) then
                moveto = moveto+1
            end
            c:move_to_screen(moveto)
            c:move_to_tag(c.screen.tags[tagidx])
        end
    elseif not fromfirst then
        for _,c in pairs(s.all_clients) do
            tagidx = c.first_tag.index
            c:move_to_screen(first)
            c:move_to_tag(c.screen.tags[tagidx])
        end
    end
end)
