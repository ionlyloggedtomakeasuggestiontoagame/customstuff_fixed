function p.__get_is_solid()
    return false
end

function p.__get_tex()
    return ""
end

function p.__main()
    set_default_block("block_cow_field_air")
    create_rect("XAR_GLASS",0,0,15,15,15,15)
    block_cow_field.floor()
    --rings
    add_bent(7,7,4,"bent_base_ring_green")
    add_bent(15,15,7,"bent_base_ring_red")
end

function p.__type_init(id)
ia_block_new_var_i(id, "fielddepth", 0)
end