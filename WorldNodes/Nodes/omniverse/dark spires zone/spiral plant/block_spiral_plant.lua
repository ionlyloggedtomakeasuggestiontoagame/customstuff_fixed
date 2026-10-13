function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_concrete_purple_border"
end
function p.__type_init(id)
    ia_block_new_var_i(id, "depth", 0)
end

function p.__main()
        --to check how deep it goes
        local parent_depth = 0
        local level = get_level()
        if( get_input_path_block_var_exists(level-1, "depth", "i") ) then
            parent_depth = get_input_path_block_i(level-1, "depth")
        end
        local depth = parent_depth + 1
        chunk_set_i("depth", depth)

    if get_input_adj_bt(1,0,0) == "block_spiral_plant_middle" then --is the plant in its structure or not?
        set_default_block("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER")
        create_rect("XAR_EMPTY_BORING",1,1,1,14,14,14)
        create_rect("XAR_GLASS",2,0,1,13,0,14)
        create_rect("XAR_GLASS",2,15,1,13,15,14)
        create_rect("XAR_GLASS",0,2,1,0,13,14)
        create_rect("XAR_ANTI_PLUG_GLASS",15,2,1,15,13,14)
    else
        set_default_block("block_void_shards")
        --cube around plant
        create_rect("block_void_ying_forest_cube", 0,0,0, 15,15,0)
        create_rect("block_void_ying_forest_cube", 0,0,15, 15,15,15)
        create_rect("block_void_ying_forest_cube", 0,0,0, 0,0,15)
        create_rect("block_void_ying_forest_cube", 15,0,0, 15,0,15)
        create_rect("block_void_ying_forest_cube", 0,15,0, 0,15,15)
        create_rect("block_void_ying_forest_cube", 15,15,0, 15,15,15)
         --things around plant
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER", 2,2,0, 2,2,3)
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER", 13,13,0, 13,13,3)
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER", 13,2,0, 13,2,3)
        create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER", 2,13,0, 2,13,3)
        set_pos(13,2,3, "XAR_SOLID_BORING_EXPANDER")
        set_pos(13,2,4,"XAR_ASCEND_SIMPLE")
        add_bent(2,2,5, "bent_base_ring_green")
        add_bent_s(2,13,5, "bent_base_txt","This is a spiral plant, the deeper u go the better the treasure, but dont be too greedy or its gonna be a long way to the exit, maybe so long its better to just load before u went inside...")
    end
    --plant itself
    create_rect("XAR_SOLID_BORING_DARK_CONCRETE_BLUE_BORDER", 7,7,0, 7,7,5)
    create_rect("block_spiral_plant_middle",7,7,5,9,7,5)
    create_rect("block_spiral_plant_middle",9,7,5,9,9,5)
    create_rect("block_spiral_plant_middle",5,9,5,9,9,5)
    create_rect("block_spiral_plant_middle",5,5,5,5,9,5)
    create_rect("block_spiral_plant_middle",5,5,5,11,5,5)
    create_rect("block_spiral_plant_middle",11,5,5,11,11,5)
    create_rect("block_spiral_plant_middle",3,11,5,11,11,5)
    create_rect("block_spiral_plant_middle",3,3,5,3,11,5)
    create_rect("block_spiral_plant_middle",3,3,5,11,3,5)
    add_bent(11,3,5, "bent_base_ring_green")
    set_pos(11,3,5,"block_spiral_plant_entrance")
    set_pos(12,3,5,"block_spiral_plant_entrance")
    set_pos(7,7,5,"spiral_plant")
end
