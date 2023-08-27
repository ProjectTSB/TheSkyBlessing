scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.haruclaire_illusion.export_version dummy
scoreboard objectives add aj.haruclaire_illusion.rig_loaded dummy
scoreboard objectives add aj.haruclaire_illusion.animation.0_upper.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.1_lower.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.2_warp_start.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.3_warp_slash.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.4_laser_0.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.5_laser_1.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.6_laser_2.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.7_charge.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.8_charge_slash_0.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.9_charge_slash_1.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.10_rain_start.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.11_rain_shot_0.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.12_rain_shot_1.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.13_rain_laser.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.14_spear.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.0_upper.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.1_lower.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.2_warp_start.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.3_warp_slash.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.4_laser_0.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.5_laser_1.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.6_laser_2.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.7_charge.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.8_charge_slash_0.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.9_charge_slash_1.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.10_rain_start.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.11_rain_shot_0.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.12_rain_shot_1.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.13_rain_laser.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.14_spear.loop_mode dummy
scoreboard players set $aj.haruclaire_illusion.animation.0_upper aj.id 0
scoreboard players set $aj.haruclaire_illusion.animation.1_lower aj.id 1
scoreboard players set $aj.haruclaire_illusion.animation.2_warp_start aj.id 2
scoreboard players set $aj.haruclaire_illusion.animation.3_warp_slash aj.id 3
scoreboard players set $aj.haruclaire_illusion.animation.4_laser_0 aj.id 4
scoreboard players set $aj.haruclaire_illusion.animation.5_laser_1 aj.id 5
scoreboard players set $aj.haruclaire_illusion.animation.6_laser_2 aj.id 6
scoreboard players set $aj.haruclaire_illusion.animation.7_charge aj.id 7
scoreboard players set $aj.haruclaire_illusion.animation.8_charge_slash_0 aj.id 8
scoreboard players set $aj.haruclaire_illusion.animation.9_charge_slash_1 aj.id 9
scoreboard players set $aj.haruclaire_illusion.animation.10_rain_start aj.id 10
scoreboard players set $aj.haruclaire_illusion.animation.11_rain_shot_0 aj.id 11
scoreboard players set $aj.haruclaire_illusion.animation.12_rain_shot_1 aj.id 12
scoreboard players set $aj.haruclaire_illusion.animation.13_rain_laser aj.id 13
scoreboard players set $aj.haruclaire_illusion.animation.14_spear aj.id 14
scoreboard players set $aj.haruclaire_illusion.variant.default aj.id 0
scoreboard players set $aj.haruclaire_illusion.variant.1 aj.id 1
scoreboard players set $aj.haruclaire_illusion.variant.2 aj.id 2
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.haruclaire_illusion.export_version aj.i 816941995
scoreboard players reset * aj.haruclaire_illusion.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.haruclaire_illusion.root] run function animated_java:haruclaire_illusion/zzzzzzzz/on_load