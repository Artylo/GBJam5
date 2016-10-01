///Director Commands

if(keyboard_check_pressed(vk_numpad1)) target_fps = 60;
if(keyboard_check_pressed(vk_numpad2)) target_fps = 30;
if(keyboard_check_pressed(vk_numpad3)) target_fps = 6;

if(current_fps != target_fps)
{
    room_speed = lerp(current_fps,target_fps,1/room_speed);
    current_fps = room_speed;
}
