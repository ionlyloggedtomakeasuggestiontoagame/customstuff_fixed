function p.__get_is_solid()
    return true
end
function p.__get_is_solid_visibly()
    return false
end
function p.__get_is_solid_physically()
    return false
end
function p.__get_is_solid_visibly_glass()
    return true
end
function p.__get_is_solid_move_body()
    return false
end

function p.__get_tex()
    return "block_field_barrier"
end

function p.__main()
    set_default_block("block_field_boring")
end
