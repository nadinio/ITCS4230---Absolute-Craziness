///scr_enemy_melee_attack();

var dis = point_distance(x,y,par_Player.x, par_Player.y);

if(!collision_line(x, y, par_Player.x, par_Player.y, obj_wall, 1, 1))
{
    alerted = true;
}

if (dis <= aggroRange && alerted == true)
{
    mp_potential_step(par_Player.x, par_Player.y, enemy_speed, true);
    if (dis <= 35 && can_attack)
    {
        health -=5;
        alarm[1] =30;
        can_attack = false;
        audio_play_sound(snd_skeleton_attack, 0, false);
    }
}
else{
    alerted = false;
    move_state = scr_hold_pattern_A; 
}
