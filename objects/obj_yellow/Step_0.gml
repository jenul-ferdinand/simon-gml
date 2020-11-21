if (simon_picked)
{
	counter++;
	if (counter >= obj_controller.flash_time)
	{
		image_alpha = obj_controller.min_alpha;	
		counter = 0;
		simon_picked = false;
		obj_controller.sound_played[0] = false;
	}	
}

