#> asset:mob/0055.hetukedah/tick/skill/summon/call
#
# モブを呼び出す
#
# @within function asset:mob/0055.hetukedah/tick/skill/summon/tick

# ID21番を呼び出す
    data modify storage api: Argument.ID set value 21
    function api:mob/summon

# 召喚した目玉をこっちに向かせる
    execute as @e[type=zombie,scores={MobID=21},sort=nearest,limit=1] at @s facing entity @r feet run tp @s ~ ~ ~ ~ ~

# 演出
    particle explosion ~ ~1.5 ~ 0 0 0 0 1 force @a[distance=..30]
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5