scoreboard players add @s aj.haruclaire.animation.10_02_sword_idle_rare.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.10_02_sword_idle_rare.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/10_02_sword_idle_rare/apply_frame_as_root
execute if score @s aj.haruclaire.animation.10_02_sword_idle_rare.local_anim_time matches 41.. run function animated_java:haruclaire/zzzzzzzz/animations/10_02_sword_idle_rare/end