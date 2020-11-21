randomise();

ds_order = ds_list_create();
ds_simon_order = ds_list_create();

simons_turn = true;
flash_time = 20;
counter = 0;
simon_loop = 0;
simon_timer = 0;
simon_time = 120;
simon_turns = 4;
pick = obj_yellow;
points = 0;
points_added = false;

sound_played[0] = false;

complete[0] = false;
complete[1] = false;
complete[2] = false;
complete[3] = false;
complete_amount = 4;

min_alpha = 0.25;
obj_yellow.image_alpha = min_alpha;
obj_blue.image_alpha = min_alpha;
obj_red.image_alpha = min_alpha;
obj_green.image_alpha = min_alpha;