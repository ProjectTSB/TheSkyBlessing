scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.haruclaire_illusion.export_version dummy
scoreboard objectives add aj.haruclaire_illusion.rig_loaded dummy
scoreboard objectives add aj.haruclaire_illusion.animation.0_upper.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.1_lower.local_anim_time dummy
scoreboard objectives add aj.haruclaire_illusion.animation.0_upper.loop_mode dummy
scoreboard objectives add aj.haruclaire_illusion.animation.1_lower.loop_mode dummy
scoreboard players set $aj.haruclaire_illusion.animation.0_upper aj.id 0
scoreboard players set $aj.haruclaire_illusion.animation.1_lower aj.id 1
scoreboard players set $aj.haruclaire_illusion.variant.default aj.id 0
scoreboard players set $aj.haruclaire_illusion.variant.1 aj.id 1
scoreboard players set $aj.haruclaire_illusion.variant.2 aj.id 2
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.haruclaire_illusion.export_version aj.i -878421896
scoreboard players reset * aj.haruclaire_illusion.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.haruclaire_illusion.root] run function animated_java:haruclaire_illusion/zzzzzzzz/on_load