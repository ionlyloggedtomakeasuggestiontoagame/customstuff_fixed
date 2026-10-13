function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_void_growth_dungeon_air")

    --depth thing
    local parent_depth = 0
    local level = get_level()
    if( get_input_path_block_var_exists(level-1, "depth", "i") ) then
        parent_depth = get_input_path_block_i(level-1, "depth")
    end
    local depth = parent_depth + 1
    chunk_set_i("depth", depth)

    if depth == 9 then
        if(randf() < 1/128) then
            set_pos(5,5,5,"XAR_SOLID_BORING")
        end
    end
    if depth == 10 then
        base_blue_tele.set_blue_type_terminal(7,7,7)
        if(randf() < 1/128) then
            set_pos(5,5,5,"block_void_growth_dungeon_secret")
        end
        if(randf() < 1/(2^12)) then
            if(randf() < 1/8) then
                add_bent(9,9,9,"bent_base_ring_green")
            else
                add_bent(9,9,9,"bent_base_ring_pink_source")
            end
        end
    else
        base_blue_tele.set_blue_type_down(7,7,7)
    end
end

function p.__type_init(id)
    ia_block_new_var_i(id, "depth", 0)
end