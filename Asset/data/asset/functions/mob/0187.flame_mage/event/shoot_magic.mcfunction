#> asset:mob/0187.flame_mage/event/shoot_magic
#
#
#
# @within function asset:mob/0187.flame_mage/tick/2.tick

# 撃つ
# パーティクル
    execute facing entity @p eyes anchored eyes positioned ^ ^ ^1 rotated ~ ~90 run function asset:mob/0187.flame_mage/event/particle
    execute anchored eyes positioned ^-0.25 ^ ^ run function asset:mob/0188.fireball/summon/2.summon
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 2 0.7

# リセット
    scoreboard players reset @s 0187.Attack