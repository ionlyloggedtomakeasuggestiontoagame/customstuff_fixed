function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__main()
    set_default_block("XAR_SOLID_BORING_CONCRETE_YELLOW_X")
    create_rect("XAR_EMPTY_BORING",1,0,1,14,15,14)
    local msg = "You are inside a Pyrite.\n\nIn here lies a 13x13x13 maze, if you finish it you will get:"..
    "\n\n^xffffff56 ^x0099ffhealth upgrades"..
    "\n^xffffff28 of ^xff0000e^xff9900v^xffff00e^x00ff00r^x0099ffy ^xffff00plasma upgrade"..
    "\n^xffffff1 ^xffff00gold"..
    "\n^xffffff5x ^xff0000damage ^xfffffffor 180 seconds"
    add_bent_s(8,8,8,"bent_base_txt",msg)
    add_bent(8,8,5,"bent_base_ring_pink_source")
    add_bent(8,8,3,"bent_base_save")
end
