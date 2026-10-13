--code from cxar 7x7x7x7 maze but adapted into a 5x5x5x5 that may appear inside bismuths, idea by sirstafford and perms from ezno

--most of the comments in it werent made by me, they were made by the people that helped cxar


-- i thought about using blue ring for this but then i realized i needed to set terminal and down and up and all that typeof stuff, realized this was much simpler, even thinking about it. so I decided to make teleporter blocks instead that teleport when you interact with them.

--maybe blue ring can be used to enter and pink ring can be used to leave. Or, I can just build a tunnel and such in the entrance layer. 
function p.__get_is_solid() return true end
function p.__get_tex() return "block_dark_concrete_white_border" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
    
    local parent_w_depth = 0
    local parent_maze_encoded = ""
    local level = get_level()
    if( get_input_path_block_var_exists(level-1, "room_w_depth", "i") ) then
        parent_w_depth = get_input_path_block_i(level-1, "room_w_depth")
    end
    if( get_input_path_block_var_exists(level-1, "maze_encoded", "s") ) then
        parent_maze_encoded = get_input_path_block_s(level-1, "maze_encoded")
    end
    local w_layer = parent_w_depth + 1
    local maze_encoded = parent_maze_encoded
    chunk_set_i("maze_w_depth", w_layer)
    chunk_set_s("maze_encoded", maze_encoded)

    
    local function fill_w_layer(maze_encoded,X,Y,Z,W,w_layer)
        local gx,gy,gz = 2*X-1,2*Y-1,2*Z-1
        local start = w_layer*(gx*gy*gz)+1
        local idx = start
        for z=0+1,gz-1+1 do
            for y=0+1,gy-1+1 do
                for x=0+1,gx-1+1 do
                    local digit = maze_encoded:sub(idx,idx)
                    if(digit == "#") then
                        set_pos(x,y,z,"XAR_SOLID_BORING_DARK_CONCRETE_WHITE_BORDER")
                    else
                        set_pos(x,y,z,"block_4D_maze_room_bismuth")
                        block_set_s(x,y,z,"open_4d_id", digit)
                        --for text box (you don't need this)
                        block_set_v(x,y,z,"room_pos",std.vec(x,y,z))
                    end
                    idx = idx +1
                    --add_bent_s(x,y,z,"bent_base_txt","" .. w_layer.." ".. digit)
                end
            end
        end
    end
    fill_w_layer(maze_encoded,5,5,5,5,w_layer)
    --add_bent_s(2,2,2,"bent_base_txt",maze_encoded)
    if(w_layer == 0) then
        set_pos(0,1,1,"XAR_MYLANTIS_CAVES_LIB_ASCEND_WALL_X_NEG")
        add_bent(1,1,1,"bent_base_ring_green")
        omniverse.create_edges("XAR_SOLID_BORING_CONCRETE_WHITE_BORDER",0,0,0,0,2,2)
    elseif(w_layer == 4) then 
        set_pos(9,10,10,"XAR_SOLID_BORING_HELL")
        set_pos(9,9,11,"XAR_SOLID_BORING_NUM_7")
        set_pos(8,9,10,"XAR_SOLID_BORING_OMEGA")
        set_pos(10,9,10,"XAR_SOLID_BORING_RADIOACTIVE")
        set_pos(9,8,10,"XAR_RAINBOW_FLOWER_SOLID")
        set_pos(9,9,10,"block_4D_maze_treasure_bismuth")
    end
end


function p.__type_init(id)
    --String with length (2x-1)(2y-1)(2z-1)w
    ia_block_new_var_s(id, "maze_encoded", "")
    --should be 0, or one more than room_w_depth (set by the maze_room_block)
    ia_block_new_var_i(id, "maze_w_depth", 0)
end
