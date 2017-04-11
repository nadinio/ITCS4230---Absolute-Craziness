///scr_enemy_range_attack();
var dis = point_distance(x,y,par_Player.x, par_Player.y);

if(!collision_line(x, y, par_Player.x, par_Player.y, obj_wall, 1, 1))
{
    alerted = true;
}

if (dis <= aggroRange && alerted && can_shoot)
{
    enemy_pro = instance_create(x,y, attack);
    enemy_pro.speed=10;
    enemy_pro.direction = point_direction(x,y, par_Player.x, par_Player.y);
    enemy_pro.image_angle = enemy_pro.direction;
    alarm [0] = 30;
    can_shoot = false
}
else{
    alerted = false;
    move_state = scr_range_pattern_B; 
}



