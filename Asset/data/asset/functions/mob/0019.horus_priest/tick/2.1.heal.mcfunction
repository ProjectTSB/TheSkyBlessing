#> asset:mob/0019.horus_priest/tick/2.1.heal
#
# Mobのtick時の処理
#
# @within function asset:mob/0019.horus_priest/tick/2.tick


# 効果を発動する
    data modify storage lib: Argument.Heal set value 30f
    function lib:heal/modifier
    execute as @e[tag=Enemy,distance=..10] run function lib:heal/
    execute as @e[tag=Enemy,distance=..10] at @s run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 10
    playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 1 1
# リセット
    data remove storage lib: Argument
    scoreboard players set @s J.HealCool 0
