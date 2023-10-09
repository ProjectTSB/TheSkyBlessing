scoreboard players add @s aj.haruclaire.animation.06_01_rod_shot_magic.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.06_01_rod_shot_magic.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/06_01_rod_shot_magic/apply_frame_as_root
execute if score @s aj.haruclaire.animation.06_01_rod_shot_magic.local_anim_time matches 81.. run function animated_java:haruclaire/zzzzzzzz/animations/06_01_rod_shot_magic/end