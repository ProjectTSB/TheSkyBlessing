scoreboard players add @s aj.haruclaire.animation.16_05_sword_charge_counter.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.16_05_sword_charge_counter.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/16_05_sword_charge_counter/apply_frame_as_root
execute if score @s aj.haruclaire.animation.16_05_sword_charge_counter.local_anim_time matches 65.. run function animated_java:haruclaire/zzzzzzzz/animations/16_05_sword_charge_counter/end