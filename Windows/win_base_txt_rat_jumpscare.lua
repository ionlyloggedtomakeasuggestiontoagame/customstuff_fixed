function p.__render(wid)
    ga_win_set_background_default(wid)

    ga_win_set_char_size(wid, 0.015, 0.03)
    ga_win_txt_box(wid, "", true)
    ga_win_quad(wid, 0.33, 0.28, 0.66, 0.84,"MonsterRatMinor")
    ga_win_txt_center(wid, 0.20, "*Nibbles you*")
    
end

function p.__process_input(wid)
    if( ga_win_key_pressed(wid, "ESC") or
        ga_win_key_pressed(wid, "F") or
        ga_win_mouse_pressed(wid, true) or
        ga_win_mouse_pressed(wid, false) ) --Ok?
    then
        ga_window_pop()
    end

    --Copying the text to the clipboard
    --using either CTRL + A or CTRL + C.
    if( ga_win_key_down("LCTRL") ) then
        if( ga_win_key_pressed(wid, "C") ) then
            ga_play_sound("menu_select")
            local msg = ga_get_s("temp.base.textbox_text")
            local msg_stripped = ga_txt_strip_esc_seq(msg)
            ga_copy_to_clipboard(msg_stripped)
        end
    end
end
