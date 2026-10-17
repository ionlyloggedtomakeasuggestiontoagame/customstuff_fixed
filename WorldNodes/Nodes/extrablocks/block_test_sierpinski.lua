function p.__get_is_solid() return true end
function p.__get_tex() return "block_belle_rosette" end

function p.__main()
    set_default_block("block_E1_2_air")
    set_default_block("XAR_EMPTY_BORING")

    local block = "block_test_sierpinski"
    fractals.sierpinski(0,0,0,block)
    --rings
    omniverse.rings()
end