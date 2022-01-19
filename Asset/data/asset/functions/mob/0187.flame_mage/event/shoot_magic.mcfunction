#> asset:mob/0187.flame_mage/event/shoot_magic
#
#
#
# @within function asset:mob/0187.flame_mage/tick/2.tick

# 撃つ
# パーティクル
    execute facing entity @p[gamemode=!spectator] eyes anchored eyes positioned ^ ^ ^1 rotated ~ ~90 run function asset:mob/0187.flame_mage/event/particle
    data modify storage api: Argument.ID set value 188
    execute anchored eyes positioned ^-0.25 ^ ^ run function api:mob/summon
    execute anchored eyes positioned ^-0.25 ^ ^ run tp @e[type=marker,tag=58.Init,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ facing entity @p[gamemode=!spectator,distance=..20] eyes
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.7

# リセット
    scoreboard players reset @s 57.Attack