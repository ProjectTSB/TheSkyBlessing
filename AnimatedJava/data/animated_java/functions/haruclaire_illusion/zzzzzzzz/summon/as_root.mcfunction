execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.haruclaire_illusion.rig_loaded 1
scoreboard players operation @s aj.haruclaire_illusion.export_version = aj.haruclaire_illusion.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:haruclaire_illusion/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.haruclaire_illusion.variant.default aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.haruclaire_illusion.variant.1 aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/apply_variant/1/as_root
execute if score #variant aj.i = $aj.haruclaire_illusion.variant.2 aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/apply_variant/2/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.0_upper aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/0_upper/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.0_upper aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.0_upper.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.1_lower aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/1_lower/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.1_lower aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.1_lower.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.2_warp_start aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/2_warp_start/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.2_warp_start aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.2_warp_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.3_warp_slash aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/3_warp_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.3_warp_slash aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.3_warp_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.4_laser_0 aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/4_laser_0/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.4_laser_0 aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.4_laser_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.5_laser_1 aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/5_laser_1/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.5_laser_1 aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.5_laser_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.6_laser_2 aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/6_laser_2/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.6_laser_2 aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.6_laser_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.7_charge aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/7_charge/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.7_charge aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.7_charge.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.8_charge_slash_0 aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/8_charge_slash_0/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.8_charge_slash_0 aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.8_charge_slash_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.9_charge_slash_1 aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/9_charge_slash_1/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.9_charge_slash_1 aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.9_charge_slash_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.10_rain_start aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/10_rain_start/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.10_rain_start aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.10_rain_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.11_rain_shot_0 aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/11_rain_shot_0/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.11_rain_shot_0 aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.11_rain_shot_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.12_rain_shot_1 aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/12_rain_shot_1/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.12_rain_shot_1 aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.12_rain_shot_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.13_rain_laser aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/13_rain_laser/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.13_rain_laser aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.13_rain_laser.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.14_spear aj.id run function animated_java:haruclaire_illusion/zzzzzzzz/animations/14_spear/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire_illusion.animation.14_spear aj.id run scoreboard players operation @s aj.haruclaire_illusion.animation.14_spear.local_anim_time = #frame aj.i
execute at @s run function #animated_java:haruclaire_illusion/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i