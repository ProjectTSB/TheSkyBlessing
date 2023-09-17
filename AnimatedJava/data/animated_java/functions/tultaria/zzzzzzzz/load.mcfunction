scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.tultaria.export_version dummy
scoreboard objectives add aj.tultaria.rig_loaded dummy
scoreboard objectives add aj.tultaria.animation.neutral.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.staff_swing_1.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.staff_swing_2.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.dash_slash_windup.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.dash_slash_active.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.dash_stab_windup.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.dash_stab_windup_fast.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.dash_stab_active.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.dash_stab_end.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.return_to_neutral.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.deadly_windup.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.deadly_loop.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.deadly_end.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.deadly_rod_spin.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.neutral.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.staff_swing_1.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.staff_swing_2.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.dash_slash_windup.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.dash_slash_active.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.dash_stab_windup.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.dash_stab_windup_fast.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.dash_stab_active.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.dash_stab_end.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.return_to_neutral.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.deadly_windup.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.deadly_loop.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.deadly_end.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.deadly_rod_spin.loop_mode dummy
scoreboard players set $aj.tultaria.animation.neutral aj.id 0
scoreboard players set $aj.tultaria.animation.staff_swing_1 aj.id 1
scoreboard players set $aj.tultaria.animation.staff_swing_2 aj.id 2
scoreboard players set $aj.tultaria.animation.dash_slash_windup aj.id 3
scoreboard players set $aj.tultaria.animation.dash_slash_active aj.id 4
scoreboard players set $aj.tultaria.animation.dash_stab_windup aj.id 5
scoreboard players set $aj.tultaria.animation.dash_stab_windup_fast aj.id 6
scoreboard players set $aj.tultaria.animation.dash_stab_active aj.id 7
scoreboard players set $aj.tultaria.animation.dash_stab_end aj.id 8
scoreboard players set $aj.tultaria.animation.return_to_neutral aj.id 9
scoreboard players set $aj.tultaria.animation.deadly_windup aj.id 10
scoreboard players set $aj.tultaria.animation.deadly_loop aj.id 11
scoreboard players set $aj.tultaria.animation.deadly_end aj.id 12
scoreboard players set $aj.tultaria.animation.deadly_rod_spin aj.id 13
scoreboard players set $aj.tultaria.variant.normal aj.id 0
scoreboard players set $aj.tultaria.variant.no_wing aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.tultaria.export_version aj.i 43460665
scoreboard players reset * aj.tultaria.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.tultaria.root] run function animated_java:tultaria/zzzzzzzz/on_load