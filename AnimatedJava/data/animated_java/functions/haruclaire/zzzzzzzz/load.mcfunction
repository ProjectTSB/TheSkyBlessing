scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.haruclaire.export_version dummy
scoreboard objectives add aj.haruclaire.rig_loaded dummy
scoreboard objectives add aj.haruclaire.animation.01_01_rod_idle.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.01_02_rod_idle_rare.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.02_01_rod_attack_move.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.02_02_rod_attack_attack.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.03_01_rod_turara_lockon.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.03_02_rod_turara_attack.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.04_01_rod_laser_pre.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.04_02_rod_laser_shot.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.05_01_rod_set_magic.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.06_01_rod_shot_magic.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.07_01_rod_shot_move_right.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.07_02_rod_shot_move_left.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.10_01_sword_idle.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.10_01_sword_idle_bak.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.11_01_sword_shot_move_right.local_anim_time dummy
scoreboard objectives add aj.haruclaire.animation.01_01_rod_idle.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.01_02_rod_idle_rare.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.02_01_rod_attack_move.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.02_02_rod_attack_attack.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.03_01_rod_turara_lockon.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.03_02_rod_turara_attack.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.04_01_rod_laser_pre.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.04_02_rod_laser_shot.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.05_01_rod_set_magic.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.06_01_rod_shot_magic.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.07_01_rod_shot_move_right.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.07_02_rod_shot_move_left.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.10_01_sword_idle.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.10_01_sword_idle_bak.loop_mode dummy
scoreboard objectives add aj.haruclaire.animation.11_01_sword_shot_move_right.loop_mode dummy
scoreboard players set $aj.haruclaire.animation.01_01_rod_idle aj.id 0
scoreboard players set $aj.haruclaire.animation.01_02_rod_idle_rare aj.id 1
scoreboard players set $aj.haruclaire.animation.02_01_rod_attack_move aj.id 2
scoreboard players set $aj.haruclaire.animation.02_02_rod_attack_attack aj.id 3
scoreboard players set $aj.haruclaire.animation.03_01_rod_turara_lockon aj.id 4
scoreboard players set $aj.haruclaire.animation.03_02_rod_turara_attack aj.id 5
scoreboard players set $aj.haruclaire.animation.04_01_rod_laser_pre aj.id 6
scoreboard players set $aj.haruclaire.animation.04_02_rod_laser_shot aj.id 7
scoreboard players set $aj.haruclaire.animation.05_01_rod_set_magic aj.id 8
scoreboard players set $aj.haruclaire.animation.06_01_rod_shot_magic aj.id 9
scoreboard players set $aj.haruclaire.animation.07_01_rod_shot_move_right aj.id 10
scoreboard players set $aj.haruclaire.animation.07_02_rod_shot_move_left aj.id 11
scoreboard players set $aj.haruclaire.animation.10_01_sword_idle aj.id 12
scoreboard players set $aj.haruclaire.animation.10_01_sword_idle_bak aj.id 13
scoreboard players set $aj.haruclaire.animation.11_01_sword_shot_move_right aj.id 14
scoreboard players set $aj.haruclaire.variant.default aj.id 0
scoreboard players set $aj.haruclaire.variant.blink aj.id 1
scoreboard players set $aj.haruclaire.variant.wink aj.id 2
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.haruclaire.export_version aj.i -1384394207
scoreboard players reset * aj.haruclaire.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.haruclaire.root] run function animated_java:haruclaire/zzzzzzzz/on_load