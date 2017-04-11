///scr_range_pattern_B();
image_index = 1;
var dis = point_distance(x,y,par_Player.x, par_Player.y);

if (dis <= aggroRange){
    move_state = scr_enemy_range_attack();
}
