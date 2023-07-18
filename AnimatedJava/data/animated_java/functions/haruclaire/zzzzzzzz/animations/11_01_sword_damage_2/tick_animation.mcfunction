scoreboard players add @s aj.haruclaire.animation.11_01_sword_damage_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.11_01_sword_damage_2.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/11_01_sword_damage_2/apply_frame_as_root
execute if score @s aj.haruclaire.animation.11_01_sword_damage_2.local_anim_time matches 26.. run function animated_java:haruclaire/zzzzzzzz/animations/11_01_sword_damage_2/end