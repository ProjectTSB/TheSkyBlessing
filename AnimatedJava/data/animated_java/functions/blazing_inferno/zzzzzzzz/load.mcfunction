scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.blazing_inferno.export_version dummy
scoreboard objectives add aj.blazing_inferno.rig_loaded dummy
scoreboard objectives add aj.blazing_inferno.animation.neurtal.local_anim_time dummy
scoreboard objectives add aj.blazing_inferno.animation.right1_active.local_anim_time dummy
scoreboard objectives add aj.blazing_inferno.animation.left1_active.local_anim_time dummy
scoreboard objectives add aj.blazing_inferno.animation.dash_windup.local_anim_time dummy
scoreboard objectives add aj.blazing_inferno.animation.dash_charge.local_anim_time dummy
scoreboard objectives add aj.blazing_inferno.animation.dash_active.local_anim_time dummy
scoreboard objectives add aj.blazing_inferno.animation.dash_end.local_anim_time dummy
scoreboard objectives add aj.blazing_inferno.animation.neurtal.loop_mode dummy
scoreboard objectives add aj.blazing_inferno.animation.right1_active.loop_mode dummy
scoreboard objectives add aj.blazing_inferno.animation.left1_active.loop_mode dummy
scoreboard objectives add aj.blazing_inferno.animation.dash_windup.loop_mode dummy
scoreboard objectives add aj.blazing_inferno.animation.dash_charge.loop_mode dummy
scoreboard objectives add aj.blazing_inferno.animation.dash_active.loop_mode dummy
scoreboard objectives add aj.blazing_inferno.animation.dash_end.loop_mode dummy
scoreboard players set $aj.blazing_inferno.animation.neurtal aj.id 0
scoreboard players set $aj.blazing_inferno.animation.right1_active aj.id 1
scoreboard players set $aj.blazing_inferno.animation.left1_active aj.id 2
scoreboard players set $aj.blazing_inferno.animation.dash_windup aj.id 3
scoreboard players set $aj.blazing_inferno.animation.dash_charge aj.id 4
scoreboard players set $aj.blazing_inferno.animation.dash_active aj.id 5
scoreboard players set $aj.blazing_inferno.animation.dash_end aj.id 6
scoreboard players set $aj.blazing_inferno.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.blazing_inferno.export_version aj.i 142357406
scoreboard players reset * aj.blazing_inferno.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.blazing_inferno.root] run function animated_java:blazing_inferno/zzzzzzzz/on_load