scoreboard players add @s aj.blazing_inferno.animation.triple_punch.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.blazing_inferno.animation.triple_punch.local_anim_time
function animated_java:blazing_inferno/zzzzzzzz/animations/triple_punch/apply_frame_as_root
execute if score @s aj.blazing_inferno.animation.triple_punch.local_anim_time matches 21.. run function animated_java:blazing_inferno/zzzzzzzz/animations/triple_punch/end