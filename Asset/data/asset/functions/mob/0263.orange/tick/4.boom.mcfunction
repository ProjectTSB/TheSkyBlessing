#> asset:mob/0263.orange/tick/4.boom
#
# 爆発
#
# @within function
#   asset:mob/0263.orange/tick/2.tick
#   asset:mob/0263.orange/tick/3.on_block

# 演出
    particle dust 0 1 0 1 ~ ~0.7 ~ 0.02 0.02 0.02 0 5 normal @a
    particle dust 1 0.5 0 1 ~ ~0.2 ~ 0.4 0.4 0.4 0 200 normal @a
    playsound entity.item.pickup hostile @a ~ ~ ~ 1 0.5 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.1 1 0

# 効果を付与
    effect give @a[gamemode=!spectator,distance=..1.5] saturation 3 0 true
    effect give @a[gamemode=!spectator,distance=..1.5] slowness 3 2 true

# 爆発ダメージ
    data modify storage lib: Argument.Damage set value 15f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 消滅
    kill @s