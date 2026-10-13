function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_void_shards")
    --the shards
    for i = 1,randi(0,3) do
        local x = randi(0,15)
        local y = randi(0,15)
        local z = randi(0,15)
        local height = randi(0,4)
        create_rect("block_void_lasagna", x,z,y, x,z,y+height)
        if (randf() < 0.05) then
            if (randf() > 0.1) then
                 if (randf() > 0.5) then
                      set_pos(x,z,y+height+1,"block_universe_cube")
                     else if(randf() > 0.5) then
                        set_pos(x,z,y+height+1,"block_byork")
                        else
                        set_pos(x,z,y+height+1,"XAR_SOLID_BORING_DARK_GREEN_BORDER")
                        set_pos(x,z,y+height+2,"XAR_YING_FOREST")
                    end
                 end
                 else
                 set_pos(x,z,y+height+1,"block_multiversal_structure")
            end
        end
        create_rect("block_dark_spires", x,z,y-randi(1,5), x,z,y-1)
    end
    --air rings
    if(randf() < 0.25) then
         local xair = randi(0,15)
         local yair = randi(0,15)
         local zair = randi(0,15)
         set_pos(xair,yair,zair,"e")
         if(randf() > 0.3) then
               add_bent(xair,yair,zair,"bent_base_ring_green")
         else
               add_bent(xair,yair,zair,"bent_base_ring_red")
         end
     end
end
