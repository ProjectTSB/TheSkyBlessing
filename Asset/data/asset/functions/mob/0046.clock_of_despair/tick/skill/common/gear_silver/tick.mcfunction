#> asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/tick
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/tick

scoreboard players add @s 1A.LifeTime 1

execute if score @s 1A.LifeTime matches 01..06 run tp @s ~ ~ ~ ~4.5 ~
execute if score @s 1A.LifeTime matches 01..06 run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/gear/4
execute if score @s 1A.LifeTime matches 07..12 run tp @s ~ ~ ~ ~3.5 ~
execute if score @s 1A.LifeTime matches 07..12 run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/gear/4
execute if score @s 1A.LifeTime matches 13..18 run tp @s ~ ~ ~ ~2.5 ~
execute if score @s 1A.LifeTime matches 13..18 run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/gear/3
execute if score @s 1A.LifeTime matches 19..24 run tp @s ~ ~ ~ ~1.5 ~
execute if score @s 1A.LifeTime matches 19..24 run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/gear/2
execute if score @s 1A.LifeTime matches 25..30 run tp @s ~ ~ ~ ~0.5 ~
execute if score @s 1A.LifeTime matches 25..30 run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/gear/1

execute if score @s 1A.LifeTime matches 126..140 run tp @s ~ ~ ~ ~3.5 ~
execute if score @s 1A.LifeTime matches 126..140 run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/gear/3
execute if score @s 1A.LifeTime matches 126..140 positioned ~ ~5 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/gear/3
execute if score @s 1A.LifeTime matches 126..130 positioned ~ ~5 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/burst_rain/1
execute if score @s 1A.LifeTime matches 131..135 positioned ~ ~5 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/burst_rain/2
execute if score @s 1A.LifeTime matches 136..140 positioned ~ ~5 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/vfx/burst_rain/3
execute if score @s 1A.LifeTime matches 126..140 positioned ~ ~4 ~ run particle flash
execute if score @s 1A.LifeTime matches 126..140 positioned ~ ~4 ~ run playsound minecraft:entity.firework_rocket.twinkle_far hostile @a ~ ~ ~ 1 2

execute if score @s 1A.LifeTime matches 126..140 if entity @e[type=#lib:living,tag=Friend,tag=!PlayerShouldInvulnerable,tag=!Uninterferable,distance=..8.5] run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/damage

execute if score @s 1A.LifeTime matches 140 run kill @s