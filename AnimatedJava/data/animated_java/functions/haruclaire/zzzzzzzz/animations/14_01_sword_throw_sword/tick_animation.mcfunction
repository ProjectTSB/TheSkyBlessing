scoreboard players add @s aj.haruclaire.animation.14_01_sword_throw_sword.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.14_01_sword_throw_sword.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/14_01_sword_throw_sword/apply_frame_as_root
execute if score @s aj.haruclaire.animation.14_01_sword_throw_sword.local_anim_time matches 35.. run function animated_java:haruclaire/zzzzzzzz/animations/14_01_sword_throw_sword/end