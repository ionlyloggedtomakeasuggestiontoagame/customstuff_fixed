function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("block_Quartz_Hall_air")
    srand(seed_normal())

    if randf() < 1/32 then
        if randf() < 1/2 then
            ment_start(7,7,7,"ment_monster_dragoon_greater")
                ment_set_f("__radius",3)
            ment_end()
        else
            add_bent(7,7,7, "bent_gold_20") 
        end
    end

    omniverse.rings()
end