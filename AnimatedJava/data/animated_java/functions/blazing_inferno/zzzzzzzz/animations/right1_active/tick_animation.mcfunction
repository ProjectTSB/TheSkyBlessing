scoreboard players add @s aj.blazing_inferno.animation.right1_active.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.blazing_inferno.animation.right1_active.local_anim_time
function animated_java:blazing_inferno/zzzzzzzz/animations/right1_active/apply_frame_as_root
execute if score @s aj.blazing_inferno.animation.right1_active.local_anim_time matches 20.. run function animated_java:blazing_inferno/zzzzzzzz/animations/right1_active/end