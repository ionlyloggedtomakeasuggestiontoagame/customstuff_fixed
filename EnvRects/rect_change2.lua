function p.__on_touch(level,bp)
     local levelfix = ga_get_viewer_level()
     --[[if (ga_bp_to_bt(levelfix-2, std.bp(1,1,1)) == "block_odd_maze1") then
          ga_block_change_perm(levelfix-2, std.bp(1,1,1), "block_odd_maze2")
     end
     if (ga_bp_to_bt(levelfix-2, std.bp(7,7,7)) == "block_odd_maze1") then
          ga_block_change_perm(levelfix-2, std.bp(7,7,7), "block_odd_maze2")
     end]]
     ga_search_and_replace_bt_in_chunk_perm(ga_get_viewer_ancestor_chunk_id(levelfix-2), "block_odd_maze1", "block_odd_maze2")
end