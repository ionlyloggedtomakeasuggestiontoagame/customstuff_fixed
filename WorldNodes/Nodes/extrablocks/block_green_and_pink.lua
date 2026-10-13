function p.__get_is_solid()
    return true
end

function p.__get_tex()
    return "block_green_and_pink_border"
end
function p.__get_tex_z_pos() 
    return "block_dark_green_border" 
end
function p.__get_tex_z_neg() 
    return "block_concrete_purple_border" 
end

function p.__main()
    set_default_block("XAR_SOLID_BORING_DARK_GREEN_BORDER")
    create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",0,0,0,15,15,7)
    for x = 0,15 do
        for z = 0,15 do
            local yhigh = randi(8,10)
            local ylow = randi(7,5)
            if (randf() < 0.5) then
                create_rect("XAR_SOLID_BORING_DARK_GREEN_BORDER",x,z,ylow,x,z,yhigh)
                set_pos(x,z,ylow,"block_green_and_pink")
            else
                create_rect("XAR_SOLID_BORING_CONCRETE_PURPLE_BORDER",x,z,ylow,x,z,yhigh)
                set_pos(x,z,yhigh,"block_green_and_pink")
            end
        end
    end
end
