scoreboard players add @s aj.haruclaire.animation.12_04_sword_slash_lower.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.12_04_sword_slash_lower.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/12_04_sword_slash_lower/apply_frame_as_root
execute if score @s aj.haruclaire.animation.12_04_sword_slash_lower.local_anim_time matches 16.. run function animated_java:haruclaire/zzzzzzzz/animations/12_04_sword_slash_lower/end