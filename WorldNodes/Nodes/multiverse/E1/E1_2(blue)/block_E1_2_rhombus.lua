function p.__get_is_solid() return true end
function p.__get_tex() return "block_dark_concrete_blue_border" end

function p.__main()
    set_default_block("block_E1_2_air")

    local size = 7
    local expo = 1
    local offset = 7
    omniverse.superellipse("block_E1_2_walls",size,expo,offset,offset,offset)
    set_pos(0,0,0,"block_E1_2_rhombus")
    set_pos(15,0,0,"block_E1_2_rhombus")
    set_pos(0,15,0,"block_E1_2_rhombus")
    set_pos(0,0,15,"block_E1_2_rhombus")
    set_pos(0,15,15,"block_E1_2_rhombus")
    set_pos(15,0,15,"block_E1_2_rhombus")
    set_pos(15,15,0,"block_E1_2_rhombus")
    set_pos(15,15,15,"block_E1_2_rhombus")

    block_E1_2_walls.octahedron()

    --monsters
    if(randf() < 0.125) then
         local x = randi(0,15)
         local y = randi(0,15)
         local z = randi(0,15)
            add_ment(x,y,z,"ment_monster_mad_goblin")
    end

    --rings
    omniverse.rings()
end