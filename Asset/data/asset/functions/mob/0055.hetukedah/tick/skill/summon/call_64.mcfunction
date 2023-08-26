#> asset:mob/0055.hetukedah/tick/skill/summon/call_64
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/summon/tick

# ID64番を呼び出す
    data modify storage api: Argument.ID set value 64
    function api:mob/summon

# 召喚した目玉をこっちに向かせる
    execute as @e[type=zombie,scores={MobID=64},sort=nearest,limit=1] at @s facing entity @r[distance=..30] eyes run tp @s ~ ~ ~ ~ ~

# 演出
    particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[distance=..30]
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5