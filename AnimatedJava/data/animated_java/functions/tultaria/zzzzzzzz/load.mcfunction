scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.tultaria.export_version dummy
scoreboard objectives add aj.tultaria.rig_loaded dummy
scoreboard objectives add aj.tultaria.animation.neutral.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.wing_off.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.staff_swing_1.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.staff_swing_2.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.return_to_neutral.local_anim_time dummy
scoreboard objectives add aj.tultaria.animation.neutral.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.wing_off.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.staff_swing_1.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.staff_swing_2.loop_mode dummy
scoreboard objectives add aj.tultaria.animation.return_to_neutral.loop_mode dummy
scoreboard players set $aj.tultaria.animation.neutral aj.id 0
scoreboard players set $aj.tultaria.animation.wing_off aj.id 1
scoreboard players set $aj.tultaria.animation.staff_swing_1 aj.id 2
scoreboard players set $aj.tultaria.animation.staff_swing_2 aj.id 3
scoreboard players set $aj.tultaria.animation.return_to_neutral aj.id 4
scoreboard players set $aj.tultaria.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.tultaria.export_version aj.i -674616306
scoreboard players reset * aj.tultaria.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.tultaria.root] run function animated_java:tultaria/zzzzzzzz/on_load