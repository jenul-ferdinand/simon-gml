if (keyboard_check_pressed(ord("R"))) game_restart()

if (simons_turn)
{
	simon_loop++;
	simon_timer++;
	if (simon_loop >= simon_time)
	{
		pick = choose(obj_yellow, obj_blue, obj_red, obj_green);
		
		switch (pick)
		{
			case obj_yellow:
				scr_simon_pick(obj_yellow);
				ds_list_add(ds_simon_order, "Y");
				break;
			
			case obj_blue:
				scr_simon_pick(obj_blue);
				ds_list_add(ds_simon_order, "B");
				break;
			
			case obj_red:
				scr_simon_pick(obj_red);
				ds_list_add(ds_simon_order, "R");
				break;
			
			case obj_green:
				scr_simon_pick(obj_green);
				ds_list_add(ds_simon_order, "G");
				break;	
		}
		
		if (!sound_played[0]) 
		{
			audio_play_sound(snd_beep,0,0);
			sound_played[0] = true;
		}	
		
		if (simon_timer >= simon_time * simon_turns)
		{
			simons_turn = false;
			simon_timer = 0;
		}
		
		simon_loop = 0;
	}
}
else
{
	with (obj_yellow)
	{
		if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height))
		{
			if (mouse_check_button_pressed(mb_left))
			{
				obj_yellow.image_alpha = 1;
				obj_yellow.simon_picked = true;
				audio_play_sound(snd_beep, 0, 0);
				ds_list_add(other.ds_order, "Y");
			}
		}
	}

	with (obj_blue)
	{
		if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height))
		{
			if (mouse_check_button_pressed(mb_left))
			{
				obj_blue.image_alpha = 1;
				obj_blue.simon_picked = true;
				audio_play_sound(snd_beep, 0, 0);
				ds_list_add(other.ds_order, "B");
			}
		}	
	}

	with (obj_red)
	{
		if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height))
		{
			if (mouse_check_button_pressed(mb_left))
			{
				obj_red.image_alpha = 1;
				obj_red.simon_picked = true;	
				audio_play_sound(snd_beep, 0, 0);
				ds_list_add(other.ds_order, "R");
			}
		}
	}

	with (obj_green)
	{
		if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height))
		{
			if (mouse_check_button_pressed(mb_left))
			{
				obj_green.image_alpha = 1;
				obj_green.simon_picked = true;
				audio_play_sound(snd_beep, 0, 0);
				ds_list_add(other.ds_order, "G");
			}
		}
	}
	
	if (mouse_check_button_pressed(mb_left))
	{
		for (var c = 0; c < complete_amount; c++)
		{
			if (ds_order[| c] == ds_simon_order[| c])
			{
				complete[c] = true; 
			}
		}
	}
}

if (complete[0])
{
	if (complete[1])
	{
		if (complete[2])
		{
			if (complete[3])
			{
				points += 100;
				simons_turn = true;
				simon_loop = 0;
				simon_timer = 0;
				
				ds_list_clear(ds_order);
				ds_list_clear(ds_simon_order);
				
				for (var i = 0; i < complete_amount; i++)
				{
					complete[i] = false;
				}
			}
		} 
	}
}