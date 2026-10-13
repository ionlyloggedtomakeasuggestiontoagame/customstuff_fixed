function p.__get_is_solid()return false end
function p.__get_tex() return "" end
--no texture because its gonna be in the same place as some pink sphere bents, it is the pink sphere

function p.__main()
    set_default_block("block_E1_2_air")
    local expo = 2
    local offset = 7.5
    omniverse.superellipse("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",8,expo,offset,offset,offset)
    omniverse.superellipse("block_E1_2_air",7,expo,offset,offset,offset)
    create_rect("XAR_ONE_WAY_Z_POS",7,7,15,8,8,15)
    set_pos(7,7,7,"block_pearl_pink_treasure")
    add_bent(7,7,5,"bent_base_ring_pink_dest")
    add_bent(7,7,9,"bent_base_ring_green")
    add_bent_s(15,15,15,"bent_base_txt","This is a ^xff00ffpink pearl^!, there is no way into it as far as i know, although this chunk is weirdly ^xff00ffpink active^! on its own but i cant find any ^xff00ffpink sphere^! here.")
    add_bent_s(15,15,13,"bent_base_txt","Hint: If u did the I2 mountains extra puzzle, chained rainbow flowers or had to go through the unremembered tower shrine secret, then u know the power such pink spheres have.")
end
