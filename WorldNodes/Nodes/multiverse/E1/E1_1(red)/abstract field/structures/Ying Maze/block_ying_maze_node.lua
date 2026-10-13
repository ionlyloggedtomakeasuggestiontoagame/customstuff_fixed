function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("XAR_EMPTY_BORING")
    --enemies
    if (randf() < 1/15) then
        local ying = {"ment_monster_yin_yang_green","ment_monster_yin_yang_orange","ment_monster_yin_yang_blue"}
        local yingtype = ying[randi(1,#ying)]
        add_ment(7,7,7,yingtype)
    end
end
