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
execute if score #animation aj.i = $aj.haruclaire.animation.10_01_sword_idle aj.id run function animated_java:haruclaire/zzzzzzzz/animations/10_01_sword_idle/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.10_01_sword_idle aj.id run scoreboard players operation @s aj.haruclaire.animation.10_01_sword_idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.haruclaire.animation.10_01_sword_idle_bak aj.id run function animated_java:haruclaire/zzzzzzzz/animations/10_01_sword_idle_bak/apply_frame_as_root
execute if score #animation aj.i = $aj.haruclaire.animation.10_01_sword_idle_bak aj.id run scoreboard players operation @s aj.haruclaire.animation.10_01_sword_idle_bak.local_anim_time = #frame aj.i
execute at @s run function #animated_java:haruclaire/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i