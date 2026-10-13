function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    block_cow_field_air.cowair()
    set_pos(7,7,0,"block_cow_field_air")
    add_bent(7,7,0,"bent_base_ring_green")
end