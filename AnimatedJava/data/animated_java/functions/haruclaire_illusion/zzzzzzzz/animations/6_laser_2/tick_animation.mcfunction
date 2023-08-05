scoreboard players add @s aj.haruclaire_illusion.animation.6_laser_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire_illusion.animation.6_laser_2.local_anim_time
function animated_java:haruclaire_illusion/zzzzzzzz/animations/6_laser_2/apply_frame_as_root
execute if score @s aj.haruclaire_illusion.animation.6_laser_2.local_anim_time matches 6.. run function animated_java:haruclaire_illusion/zzzzzzzz/animations/6_laser_2/end