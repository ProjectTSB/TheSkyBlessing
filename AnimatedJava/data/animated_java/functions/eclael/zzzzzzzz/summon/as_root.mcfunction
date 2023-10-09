execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.eclael.rig_loaded 1
scoreboard players operation @s aj.eclael.export_version = aj.eclael.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:eclael/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.eclael.variant.default aj.id run function animated_java:eclael/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.eclael.variant.akubi aj.id run function animated_java:eclael/zzzzzzzz/apply_variant/akubi/as_root
execute if score #variant aj.i = $aj.eclael.variant.blink aj.id run function animated_java:eclael/zzzzzzzz/apply_variant/blink/as_root
execute if score #variant aj.i = $aj.eclael.variant.wink aj.id run function animated_java:eclael/zzzzzzzz/apply_variant/wink/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.0_0_former_idle_normal aj.id run function animated_java:eclael/zzzzzzzz/animations/0_0_former_idle_normal/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.0_0_former_idle_normal aj.id run scoreboard players operation @s aj.eclael.animation.0_0_former_idle_normal.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.0_1_former_idle_akubi aj.id run function animated_java:eclael/zzzzzzzz/animations/0_1_former_idle_akubi/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.0_1_former_idle_akubi aj.id run scoreboard players operation @s aj.eclael.animation.0_1_former_idle_akubi.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.0_2_former_idle_sleep aj.id run function animated_java:eclael/zzzzzzzz/animations/0_2_former_idle_sleep/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.0_2_former_idle_sleep aj.id run scoreboard players operation @s aj.eclael.animation.0_2_former_idle_sleep.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.0_3_former_idle_bikkuri aj.id run function animated_java:eclael/zzzzzzzz/animations/0_3_former_idle_bikkuri/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.0_3_former_idle_bikkuri aj.id run scoreboard players operation @s aj.eclael.animation.0_3_former_idle_bikkuri.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.1_0_former_iai_start aj.id run function animated_java:eclael/zzzzzzzz/animations/1_0_former_iai_start/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.1_0_former_iai_start aj.id run scoreboard players operation @s aj.eclael.animation.1_0_former_iai_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.1_1_former_iai_move aj.id run function animated_java:eclael/zzzzzzzz/animations/1_1_former_iai_move/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.1_1_former_iai_move aj.id run scoreboard players operation @s aj.eclael.animation.1_1_former_iai_move.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.1_2_former_iai_attack aj.id run function animated_java:eclael/zzzzzzzz/animations/1_2_former_iai_attack/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.1_2_former_iai_attack aj.id run scoreboard players operation @s aj.eclael.animation.1_2_former_iai_attack.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.1_3_former_iai_damage aj.id run function animated_java:eclael/zzzzzzzz/animations/1_3_former_iai_damage/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.1_3_former_iai_damage aj.id run scoreboard players operation @s aj.eclael.animation.1_3_former_iai_damage.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.2_0_former_slash_start aj.id run function animated_java:eclael/zzzzzzzz/animations/2_0_former_slash_start/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.2_0_former_slash_start aj.id run scoreboard players operation @s aj.eclael.animation.2_0_former_slash_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.2_1_former_slash_0 aj.id run function animated_java:eclael/zzzzzzzz/animations/2_1_former_slash_0/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.2_1_former_slash_0 aj.id run scoreboard players operation @s aj.eclael.animation.2_1_former_slash_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.2_2_former_slash_1 aj.id run function animated_java:eclael/zzzzzzzz/animations/2_2_former_slash_1/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.2_2_former_slash_1 aj.id run scoreboard players operation @s aj.eclael.animation.2_2_former_slash_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.2_3_former_slash_2_start aj.id run function animated_java:eclael/zzzzzzzz/animations/2_3_former_slash_2_start/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.2_3_former_slash_2_start aj.id run scoreboard players operation @s aj.eclael.animation.2_3_former_slash_2_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.2_4_former_slash_2 aj.id run function animated_java:eclael/zzzzzzzz/animations/2_4_former_slash_2/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.2_4_former_slash_2 aj.id run scoreboard players operation @s aj.eclael.animation.2_4_former_slash_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.3_0_former_shot_move aj.id run function animated_java:eclael/zzzzzzzz/animations/3_0_former_shot_move/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.3_0_former_shot_move aj.id run scoreboard players operation @s aj.eclael.animation.3_0_former_shot_move.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.3_1_former_shot_0 aj.id run function animated_java:eclael/zzzzzzzz/animations/3_1_former_shot_0/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.3_1_former_shot_0 aj.id run scoreboard players operation @s aj.eclael.animation.3_1_former_shot_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.4_0_former_upper_shot_pose aj.id run function animated_java:eclael/zzzzzzzz/animations/4_0_former_upper_shot_pose/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.4_0_former_upper_shot_pose aj.id run scoreboard players operation @s aj.eclael.animation.4_0_former_upper_shot_pose.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.4_1_former_upper_shot aj.id run function animated_java:eclael/zzzzzzzz/animations/4_1_former_upper_shot/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.4_1_former_upper_shot aj.id run scoreboard players operation @s aj.eclael.animation.4_1_former_upper_shot.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.4_2_former_upper_shot_end aj.id run function animated_java:eclael/zzzzzzzz/animations/4_2_former_upper_shot_end/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.4_2_former_upper_shot_end aj.id run scoreboard players operation @s aj.eclael.animation.4_2_former_upper_shot_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.4_3_former_upper_damage aj.id run function animated_java:eclael/zzzzzzzz/animations/4_3_former_upper_damage/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.4_3_former_upper_damage aj.id run scoreboard players operation @s aj.eclael.animation.4_3_former_upper_damage.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.4_4_former_upper_damage_end aj.id run function animated_java:eclael/zzzzzzzz/animations/4_4_former_upper_damage_end/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.4_4_former_upper_damage_end aj.id run scoreboard players operation @s aj.eclael.animation.4_4_former_upper_damage_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.5_0_former_magic aj.id run function animated_java:eclael/zzzzzzzz/animations/5_0_former_magic/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.5_0_former_magic aj.id run scoreboard players operation @s aj.eclael.animation.5_0_former_magic.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.6_0_former_shortmagic aj.id run function animated_java:eclael/zzzzzzzz/animations/6_0_former_shortmagic/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.6_0_former_shortmagic aj.id run scoreboard players operation @s aj.eclael.animation.6_0_former_shortmagic.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.10_0_latter_idle_normal aj.id run function animated_java:eclael/zzzzzzzz/animations/10_0_latter_idle_normal/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.10_0_latter_idle_normal aj.id run scoreboard players operation @s aj.eclael.animation.10_0_latter_idle_normal.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.10_1_latter_idle_rare aj.id run function animated_java:eclael/zzzzzzzz/animations/10_1_latter_idle_rare/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.10_1_latter_idle_rare aj.id run scoreboard players operation @s aj.eclael.animation.10_1_latter_idle_rare.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.11_0_latter_damage_0 aj.id run function animated_java:eclael/zzzzzzzz/animations/11_0_latter_damage_0/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.11_0_latter_damage_0 aj.id run scoreboard players operation @s aj.eclael.animation.11_0_latter_damage_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.12_0_latter_warp_start aj.id run function animated_java:eclael/zzzzzzzz/animations/12_0_latter_warp_start/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.12_0_latter_warp_start aj.id run scoreboard players operation @s aj.eclael.animation.12_0_latter_warp_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.12_1_latter_warp_move_left aj.id run function animated_java:eclael/zzzzzzzz/animations/12_1_latter_warp_move_left/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.12_1_latter_warp_move_left aj.id run scoreboard players operation @s aj.eclael.animation.12_1_latter_warp_move_left.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.12_1_latter_warp_move_right aj.id run function animated_java:eclael/zzzzzzzz/animations/12_1_latter_warp_move_right/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.12_1_latter_warp_move_right aj.id run scoreboard players operation @s aj.eclael.animation.12_1_latter_warp_move_right.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.12_2_latter_warp_slash_0 aj.id run function animated_java:eclael/zzzzzzzz/animations/12_2_latter_warp_slash_0/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.12_2_latter_warp_slash_0 aj.id run scoreboard players operation @s aj.eclael.animation.12_2_latter_warp_slash_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.12_3_latter_warp_slash_1 aj.id run function animated_java:eclael/zzzzzzzz/animations/12_3_latter_warp_slash_1/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.12_3_latter_warp_slash_1 aj.id run scoreboard players operation @s aj.eclael.animation.12_3_latter_warp_slash_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.12_4_letter_warp_slash_2 aj.id run function animated_java:eclael/zzzzzzzz/animations/12_4_letter_warp_slash_2/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.12_4_letter_warp_slash_2 aj.id run scoreboard players operation @s aj.eclael.animation.12_4_letter_warp_slash_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.13_0_latter_quick_start aj.id run function animated_java:eclael/zzzzzzzz/animations/13_0_latter_quick_start/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.13_0_latter_quick_start aj.id run scoreboard players operation @s aj.eclael.animation.13_0_latter_quick_start.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.13_1_latter_quick_slash_0 aj.id run function animated_java:eclael/zzzzzzzz/animations/13_1_latter_quick_slash_0/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.13_1_latter_quick_slash_0 aj.id run scoreboard players operation @s aj.eclael.animation.13_1_latter_quick_slash_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.13_2_latter_quick_slash_1 aj.id run function animated_java:eclael/zzzzzzzz/animations/13_2_latter_quick_slash_1/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.13_2_latter_quick_slash_1 aj.id run scoreboard players operation @s aj.eclael.animation.13_2_latter_quick_slash_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.13_3_latter_quick_slash_2 aj.id run function animated_java:eclael/zzzzzzzz/animations/13_3_latter_quick_slash_2/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.13_3_latter_quick_slash_2 aj.id run scoreboard players operation @s aj.eclael.animation.13_3_latter_quick_slash_2.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.13_4_latter_quick_move aj.id run function animated_java:eclael/zzzzzzzz/animations/13_4_latter_quick_move/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.13_4_latter_quick_move aj.id run scoreboard players operation @s aj.eclael.animation.13_4_latter_quick_move.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.13_5_latter_quick_iai_0 aj.id run function animated_java:eclael/zzzzzzzz/animations/13_5_latter_quick_iai_0/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.13_5_latter_quick_iai_0 aj.id run scoreboard players operation @s aj.eclael.animation.13_5_latter_quick_iai_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.13_6_latter_quick_iai_1 aj.id run function animated_java:eclael/zzzzzzzz/animations/13_6_latter_quick_iai_1/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.13_6_latter_quick_iai_1 aj.id run scoreboard players operation @s aj.eclael.animation.13_6_latter_quick_iai_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.14_0_latter_moveshot_0 aj.id run function animated_java:eclael/zzzzzzzz/animations/14_0_latter_moveshot_0/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.14_0_latter_moveshot_0 aj.id run scoreboard players operation @s aj.eclael.animation.14_0_latter_moveshot_0.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.15_0_sorafune aj.id run function animated_java:eclael/zzzzzzzz/animations/15_0_sorafune/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.15_0_sorafune aj.id run scoreboard players operation @s aj.eclael.animation.15_0_sorafune.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.15_0_sorafune_tousoku aj.id run function animated_java:eclael/zzzzzzzz/animations/15_0_sorafune_tousoku/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.15_0_sorafune_tousoku aj.id run scoreboard players operation @s aj.eclael.animation.15_0_sorafune_tousoku.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.99_1_idle_relax_bak aj.id run function animated_java:eclael/zzzzzzzz/animations/99_1_idle_relax_bak/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.99_1_idle_relax_bak aj.id run scoreboard players operation @s aj.eclael.animation.99_1_idle_relax_bak.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.99_0_magic_bak aj.id run function animated_java:eclael/zzzzzzzz/animations/99_0_magic_bak/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.99_0_magic_bak aj.id run scoreboard players operation @s aj.eclael.animation.99_0_magic_bak.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.99_pose aj.id run function animated_java:eclael/zzzzzzzz/animations/99_pose/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.99_pose aj.id run scoreboard players operation @s aj.eclael.animation.99_pose.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.eclael.animation.99_invisible aj.id run function animated_java:eclael/zzzzzzzz/animations/99_invisible/apply_frame_as_root
execute if score #animation aj.i = $aj.eclael.animation.99_invisible aj.id run scoreboard players operation @s aj.eclael.animation.99_invisible.local_anim_time = #frame aj.i
execute at @s run function #animated_java:eclael/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i