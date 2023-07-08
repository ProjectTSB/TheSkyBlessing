execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.tultaria.rig_loaded 1
scoreboard players operation @s aj.tultaria.export_version = aj.tultaria.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:tultaria/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.tultaria.variant.normal aj.id run function animated_java:tultaria/zzzzzzzz/apply_variant/normal/as_root
execute if score #variant aj.i = $aj.tultaria.variant.no_wing aj.id run function animated_java:tultaria/zzzzzzzz/apply_variant/no_wing/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.neutral aj.id run function animated_java:tultaria/zzzzzzzz/animations/neutral/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.neutral aj.id run scoreboard players operation @s aj.tultaria.animation.neutral.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.staff_swing_1 aj.id run function animated_java:tultaria/zzzzzzzz/animations/staff_swing_1/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.staff_swing_1 aj.id run scoreboard players operation @s aj.tultaria.animation.staff_swing_1.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.dash_slash_windup aj.id run function animated_java:tultaria/zzzzzzzz/animations/dash_slash_windup/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.dash_slash_windup aj.id run scoreboard players operation @s aj.tultaria.animation.dash_slash_windup.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.dash_slash_active aj.id run function animated_java:tultaria/zzzzzzzz/animations/dash_slash_active/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.dash_slash_active aj.id run scoreboard players operation @s aj.tultaria.animation.dash_slash_active.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.dash_stab_windup aj.id run function animated_java:tultaria/zzzzzzzz/animations/dash_stab_windup/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.dash_stab_windup aj.id run scoreboard players operation @s aj.tultaria.animation.dash_stab_windup.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.dash_stab_active aj.id run function animated_java:tultaria/zzzzzzzz/animations/dash_stab_active/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.dash_stab_active aj.id run scoreboard players operation @s aj.tultaria.animation.dash_stab_active.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.dash_stab_end aj.id run function animated_java:tultaria/zzzzzzzz/animations/dash_stab_end/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.dash_stab_end aj.id run scoreboard players operation @s aj.tultaria.animation.dash_stab_end.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.return_to_neutral aj.id run function animated_java:tultaria/zzzzzzzz/animations/return_to_neutral/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.return_to_neutral aj.id run scoreboard players operation @s aj.tultaria.animation.return_to_neutral.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.deadly_windup aj.id run function animated_java:tultaria/zzzzzzzz/animations/deadly_windup/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.deadly_windup aj.id run scoreboard players operation @s aj.tultaria.animation.deadly_windup.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.deadly_loop aj.id run function animated_java:tultaria/zzzzzzzz/animations/deadly_loop/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.deadly_loop aj.id run scoreboard players operation @s aj.tultaria.animation.deadly_loop.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tultaria.animation.deadly_rod_spin aj.id run function animated_java:tultaria/zzzzzzzz/animations/deadly_rod_spin/apply_frame_as_root
execute if score #animation aj.i = $aj.tultaria.animation.deadly_rod_spin aj.id run scoreboard players operation @s aj.tultaria.animation.deadly_rod_spin.local_anim_time = #frame aj.i
execute at @s run function #animated_java:tultaria/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i