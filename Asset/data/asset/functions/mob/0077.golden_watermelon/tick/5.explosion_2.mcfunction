#> asset:mob/0077.golden_watermelon/tick/5.explosion_2
#
#
#
# @within function asset:mob/0077.golden_watermelon/tick/4.explosion_charge

# 演出
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1.6 1.7 0
    playsound entity.generic.explode master @a ~ ~ ~ 1.3 1 0
    particle dust 1 0.941 0.141 2 ~ ~5 ~ 0.1 3 0.1 0 60 normal @a
    particle smoke ~ ~1.5 ~ 2 0.5 2 0 100 normal @a

# スイカスライスを召喚
    summon item ~ ~ ~ {Age:5940s,PickupDelay:5s,Item:{id:"minecraft:glistering_melon_slice",Count:4b}}

# 雷属性ダメージ
    data modify storage lib: Argument.Damage set value 8.0
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3.5] run function lib:damage/
    data remove storage lib: Argument

# 消滅
    kill @s
