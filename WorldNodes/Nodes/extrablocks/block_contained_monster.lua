function p.__get_is_solid() return true end
function p.__get_tex() return "icon_brake" end

function p.__main()
    set_default_block("e")
    std.create_edges("s")
    add_ment(7,7,7,"ment_monster_cutegoblin")
end