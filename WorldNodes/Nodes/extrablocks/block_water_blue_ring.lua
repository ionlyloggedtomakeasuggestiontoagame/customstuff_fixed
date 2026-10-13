function p.__get_is_solid() return true end
function p.__get_is_solid_move_body() return false end

function p.__get_tex() return "block_blue" end

function p.__main()
    base_blue_tele.set_blue_type_up()
    set_default_block("block_water_blue_ring")
    add_env_rect(0,0,0,15,15,15,"rect_blue_ring_env")
end
