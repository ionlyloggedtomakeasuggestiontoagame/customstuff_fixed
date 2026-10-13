function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_dark_concrete_red_border_transparent"
end
function p.__get_is_solid_visibly() return false end
function p.__get_is_solid_visibly_glass() return true end
function p.__get_is_partially_transparent() return true end

function p.__main()
    set_default_block("block_E1_1_air")

    --them beams
    if (get_input_adj_bt(0,0,-1) == "block_E1_1_walls") or (get_input_adj_bt(0,0,-1) == "block_E1_1_walls_transparent") then
        create_rect("block_E1_1_walls",7,7,0,7,7,7)
    end
    if (get_input_adj_bt(0,0,1) == "block_E1_1_walls") or (get_input_adj_bt(0,0,1) == "block_E1_1_walls_transparent") then
        create_rect("block_E1_1_walls",7,7,7,7,7,15)
    end
    if (get_input_adj_bt(0,-1,0) == "block_E1_1_walls") or (get_input_adj_bt(0,-1,0) == "block_E1_1_walls_transparent") then
        create_rect("block_E1_1_walls",7,0,7,7,7,7)
    end
    if (get_input_adj_bt(0,1,0) == "block_E1_1_walls") or (get_input_adj_bt(0,1,0) == "block_E1_1_walls_transparent") then
        create_rect("block_E1_1_walls",7,7,7,7,15,7)
    end
    if (get_input_adj_bt(-1,0,0) == "block_E1_1_walls") or (get_input_adj_bt(-1,0,0) == "block_E1_1_walls_transparent") then
        create_rect("block_E1_1_walls",0,7,7,7,7,7)
    end
    if (get_input_adj_bt(1,0,0) == "block_E1_1_walls") or (get_input_adj_bt(1,0,0) == "block_E1_1_walls_transparent") then
        create_rect("block_E1_1_walls",7,7,7,15,7,7)
    end
    --structures
    block_E1_1_walls.structurething(6,6,6,8,8,8,7,7,7)
    block_E1_1_air.abstract()
end

function p.__type_init(id)
ia_block_new_var_b(id, "isabstract", false)
end