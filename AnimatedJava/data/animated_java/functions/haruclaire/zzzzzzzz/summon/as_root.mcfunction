execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.haruclaire.rig_loaded 1
scoreboard players operation @s aj.haruclaire.export_version = aj.haruclaire.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:haruclaire/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.haruclaire.variant.default aj.id run function animated_java:haruclaire/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.haruclaire.variant.blink aj.id run function animated_java:haruclaire/zzzzzzzz/apply_variant/blink/as_root
execute if score #variant aj.i = $aj.haruclaire.variant.wink aj.id run function animated_java:haruclaire/zzzzzzzz/apply_variant/wink/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.00_01_start aj.id run function animated_java:haruclaire/zzzzzzzz/animations/00_01_start/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.00_01_start aj.id run scoreboard players operation @s aj.haruclaire.animation.00_01_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.01_01_rod_idle aj.id run function animated_java:haruclaire/zzzzzzzz/animations/01_01_rod_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.01_01_rod_idle aj.id run scoreboard players operation @s aj.haruclaire.animation.01_01_rod_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.01_02_rod_idle_rare aj.id run function animated_java:haruclaire/zzzzzzzz/animations/01_02_rod_idle_rare/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.01_02_rod_idle_rare aj.id run scoreboard players operation @s aj.haruclaire.animation.01_02_rod_idle_rare.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.02_01_rod_attack_move aj.id run function animated_java:haruclaire/zzzzzzzz/animations/02_01_rod_attack_move/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.02_01_rod_attack_move aj.id run scoreboard players operation @s aj.haruclaire.animation.02_01_rod_attack_move.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.02_02_rod_attack_attack aj.id run function animated_java:haruclaire/zzzzzzzz/animations/02_02_rod_attack_attack/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.02_02_rod_attack_attack aj.id run scoreboard players operation @s aj.haruclaire.animation.02_02_rod_attack_attack.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.03_01_rod_turara_lockon aj.id run function animated_java:haruclaire/zzzzzzzz/animations/03_01_rod_turara_lockon/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.03_01_rod_turara_lockon aj.id run scoreboard players operation @s aj.haruclaire.animation.03_01_rod_turara_lockon.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.03_02_rod_turara_attack aj.id run function animated_java:haruclaire/zzzzzzzz/animations/03_02_rod_turara_attack/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.03_02_rod_turara_attack aj.id run scoreboard players operation @s aj.haruclaire.animation.03_02_rod_turara_attack.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.04_01_rod_laser_pre aj.id run function animated_java:haruclaire/zzzzzzzz/animations/04_01_rod_laser_pre/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.04_01_rod_laser_pre aj.id run scoreboard players operation @s aj.haruclaire.animation.04_01_rod_laser_pre.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.04_02_rod_laser_shot aj.id run function animated_java:haruclaire/zzzzzzzz/animations/04_02_rod_laser_shot/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.04_02_rod_laser_shot aj.id run scoreboard players operation @s aj.haruclaire.animation.04_02_rod_laser_shot.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.05_01_rod_set_magic aj.id run function animated_java:haruclaire/zzzzzzzz/animations/05_01_rod_set_magic/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.05_01_rod_set_magic aj.id run scoreboard players operation @s aj.haruclaire.animation.05_01_rod_set_magic.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.06_01_rod_shot_magic aj.id run function animated_java:haruclaire/zzzzzzzz/animations/06_01_rod_shot_magic/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.06_01_rod_shot_magic aj.id run scoreboard players operation @s aj.haruclaire.animation.06_01_rod_shot_magic.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.07_01_rod_shot_move_right aj.id run function animated_java:haruclaire/zzzzzzzz/animations/07_01_rod_shot_move_right/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.07_01_rod_shot_move_right aj.id run scoreboard players operation @s aj.haruclaire.animation.07_01_rod_shot_move_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.07_02_rod_shot_move_left aj.id run function animated_java:haruclaire/zzzzzzzz/animations/07_02_rod_shot_move_left/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.07_02_rod_shot_move_left aj.id run scoreboard players operation @s aj.haruclaire.animation.07_02_rod_shot_move_left.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.08_01_rod_teleport aj.id run function animated_java:haruclaire/zzzzzzzz/animations/08_01_rod_teleport/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.08_01_rod_teleport aj.id run scoreboard players operation @s aj.haruclaire.animation.08_01_rod_teleport.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.09_01_rod_to_sword aj.id run function animated_java:haruclaire/zzzzzzzz/animations/09_01_rod_to_sword/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.09_01_rod_to_sword aj.id run scoreboard players operation @s aj.haruclaire.animation.09_01_rod_to_sword.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.10_01_sword_idle aj.id run function animated_java:haruclaire/zzzzzzzz/animations/10_01_sword_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.10_01_sword_idle aj.id run scoreboard players operation @s aj.haruclaire.animation.10_01_sword_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.10_02_sword_idle_rare aj.id run function animated_java:haruclaire/zzzzzzzz/animations/10_02_sword_idle_rare/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.10_02_sword_idle_rare aj.id run scoreboard players operation @s aj.haruclaire.animation.10_02_sword_idle_rare.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.11_01_sword_damage_1 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/11_01_sword_damage_1/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.11_01_sword_damage_1 aj.id run scoreboard players operation @s aj.haruclaire.animation.11_01_sword_damage_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.11_01_sword_damage_2 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/11_01_sword_damage_2/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.11_01_sword_damage_2 aj.id run scoreboard players operation @s aj.haruclaire.animation.11_01_sword_damage_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.11_01_sword_damage_3 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/11_01_sword_damage_3/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.11_01_sword_damage_3 aj.id run scoreboard players operation @s aj.haruclaire.animation.11_01_sword_damage_3.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.12_01_sword_slash_move aj.id run function animated_java:haruclaire/zzzzzzzz/animations/12_01_sword_slash_move/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.12_01_sword_slash_move aj.id run scoreboard players operation @s aj.haruclaire.animation.12_01_sword_slash_move.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.12_02_sword_slash_move_to_slash aj.id run function animated_java:haruclaire/zzzzzzzz/animations/12_02_sword_slash_move_to_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.12_02_sword_slash_move_to_slash aj.id run scoreboard players operation @s aj.haruclaire.animation.12_02_sword_slash_move_to_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.12_03_sword_slash_upper aj.id run function animated_java:haruclaire/zzzzzzzz/animations/12_03_sword_slash_upper/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.12_03_sword_slash_upper aj.id run scoreboard players operation @s aj.haruclaire.animation.12_03_sword_slash_upper.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.12_04_sword_slash_lower aj.id run function animated_java:haruclaire/zzzzzzzz/animations/12_04_sword_slash_lower/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.12_04_sword_slash_lower aj.id run scoreboard players operation @s aj.haruclaire.animation.12_04_sword_slash_lower.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.12_05_sword_slash_spin aj.id run function animated_java:haruclaire/zzzzzzzz/animations/12_05_sword_slash_spin/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.12_05_sword_slash_spin aj.id run scoreboard players operation @s aj.haruclaire.animation.12_05_sword_slash_spin.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.13_01_sword_warp_start aj.id run function animated_java:haruclaire/zzzzzzzz/animations/13_01_sword_warp_start/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.13_01_sword_warp_start aj.id run scoreboard players operation @s aj.haruclaire.animation.13_01_sword_warp_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.13_02_sword_warp_slash_normal aj.id run function animated_java:haruclaire/zzzzzzzz/animations/13_02_sword_warp_slash_normal/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.13_02_sword_warp_slash_normal aj.id run scoreboard players operation @s aj.haruclaire.animation.13_02_sword_warp_slash_normal.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.13_03_sword_warp_slash_upper aj.id run function animated_java:haruclaire/zzzzzzzz/animations/13_03_sword_warp_slash_upper/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.13_03_sword_warp_slash_upper aj.id run scoreboard players operation @s aj.haruclaire.animation.13_03_sword_warp_slash_upper.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.13_04_sword_warp_slash_finish aj.id run function animated_java:haruclaire/zzzzzzzz/animations/13_04_sword_warp_slash_finish/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.13_04_sword_warp_slash_finish aj.id run scoreboard players operation @s aj.haruclaire.animation.13_04_sword_warp_slash_finish.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.14_01_sword_laser_shot_0 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/14_01_sword_laser_shot_0/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.14_01_sword_laser_shot_0 aj.id run scoreboard players operation @s aj.haruclaire.animation.14_01_sword_laser_shot_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.14_02_sword_laser_slash aj.id run function animated_java:haruclaire/zzzzzzzz/animations/14_02_sword_laser_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.14_02_sword_laser_slash aj.id run scoreboard players operation @s aj.haruclaire.animation.14_02_sword_laser_slash.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.15_03_sword_laser_shot_1 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/15_03_sword_laser_shot_1/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.15_03_sword_laser_shot_1 aj.id run scoreboard players operation @s aj.haruclaire.animation.15_03_sword_laser_shot_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.15_04_sword_laser_shot_2 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/15_04_sword_laser_shot_2/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.15_04_sword_laser_shot_2 aj.id run scoreboard players operation @s aj.haruclaire.animation.15_04_sword_laser_shot_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.15_05_sword_laser_slash_finish aj.id run function animated_java:haruclaire/zzzzzzzz/animations/15_05_sword_laser_slash_finish/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.15_05_sword_laser_slash_finish aj.id run scoreboard players operation @s aj.haruclaire.animation.15_05_sword_laser_slash_finish.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.16_01_sword_charge_charge_0 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/16_01_sword_charge_charge_0/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.16_01_sword_charge_charge_0 aj.id run scoreboard players operation @s aj.haruclaire.animation.16_01_sword_charge_charge_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.16_02_sword_charge_slash_0 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/16_02_sword_charge_slash_0/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.16_02_sword_charge_slash_0 aj.id run scoreboard players operation @s aj.haruclaire.animation.16_02_sword_charge_slash_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.16_03_sword_charge_slash_1 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/16_03_sword_charge_slash_1/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.16_03_sword_charge_slash_1 aj.id run scoreboard players operation @s aj.haruclaire.animation.16_03_sword_charge_slash_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.16_04_sword_charge_charge_1 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/16_04_sword_charge_charge_1/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.16_04_sword_charge_charge_1 aj.id run scoreboard players operation @s aj.haruclaire.animation.16_04_sword_charge_charge_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.16_05_sword_charge_counter aj.id run function animated_java:haruclaire/zzzzzzzz/animations/16_05_sword_charge_counter/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.16_05_sword_charge_counter aj.id run scoreboard players operation @s aj.haruclaire.animation.16_05_sword_charge_counter.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.16_06_sword_charge_counter_short aj.id run function animated_java:haruclaire/zzzzzzzz/animations/16_06_sword_charge_counter_short/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.16_06_sword_charge_counter_short aj.id run scoreboard players operation @s aj.haruclaire.animation.16_06_sword_charge_counter_short.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.17_01_sword_rain_start aj.id run function animated_java:haruclaire/zzzzzzzz/animations/17_01_sword_rain_start/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.17_01_sword_rain_start aj.id run scoreboard players operation @s aj.haruclaire.animation.17_01_sword_rain_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.17_02_sword_rain_shot_0 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/17_02_sword_rain_shot_0/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.17_02_sword_rain_shot_0 aj.id run scoreboard players operation @s aj.haruclaire.animation.17_02_sword_rain_shot_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.17_03_sword_rain_shot_1 aj.id run function animated_java:haruclaire/zzzzzzzz/animations/17_03_sword_rain_shot_1/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.17_03_sword_rain_shot_1 aj.id run scoreboard players operation @s aj.haruclaire.animation.17_03_sword_rain_shot_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.17_04_sword_rain_laser aj.id run function animated_java:haruclaire/zzzzzzzz/animations/17_04_sword_rain_laser/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.17_04_sword_rain_laser aj.id run scoreboard players operation @s aj.haruclaire.animation.17_04_sword_rain_laser.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.17_05_sword_rain_laser_end aj.id run function animated_java:haruclaire/zzzzzzzz/animations/17_05_sword_rain_laser_end/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.17_05_sword_rain_laser_end aj.id run scoreboard players operation @s aj.haruclaire.animation.17_05_sword_rain_laser_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.18_01_death aj.id run function animated_java:haruclaire/zzzzzzzz/animations/18_01_death/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.18_01_death aj.id run scoreboard players operation @s aj.haruclaire.animation.18_01_death.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.99_01_hide aj.id run function animated_java:haruclaire/zzzzzzzz/animations/99_01_hide/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.99_01_hide aj.id run scoreboard players operation @s aj.haruclaire.animation.99_01_hide.local_anim_time = #frame aj.i
execute at @s run function #animated_java:haruclaire/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i