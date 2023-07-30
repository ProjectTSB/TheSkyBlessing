scoreboard players add @s aj.haruclaire.animation.16_04_sword_charge_charge_1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.16_04_sword_charge_charge_1.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/16_04_sword_charge_charge_1/apply_frame_as_root
execute if score @s aj.haruclaire.animation.16_04_sword_charge_charge_1.local_anim_time matches 80.. run function animated_java:haruclaire/zzzzzzzz/animations/16_04_sword_charge_charge_1/end