scoreboard players add @s aj.blazing_inferno.animation.dash_charge.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.blazing_inferno.animation.dash_charge.local_anim_time
function animated_java:blazing_inferno/zzzzzzzz/animations/dash_charge/apply_frame_as_root
execute if score @s aj.blazing_inferno.animation.dash_charge.local_anim_time matches 3.. run function animated_java:blazing_inferno/zzzzzzzz/animations/dash_charge/end