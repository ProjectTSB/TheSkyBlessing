#> asset:mob/0235.orange_thorwer/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0235.orange_thorwer/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle block orange_concrete ~ ~1.2 ~ 0.5 0.5 0.5 0 100 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.item.pickup hostile @a ~ ~ ~ 1 0.5 0
    execute at @p[tag=Victim,distance=..6] run playsound entity.generic.explode hostile @a ~ ~ ~ 0.3 1 0

# 効果
    effect give @p[tag=Victim,distance=..6] saturation 3 0 true
    effect give @p[tag=Victim,distance=..6] slowness 3 2 true

# 爆発ダメージ
    data modify storage lib: Argument.Damage set value 22f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    data remove storage lib: Argument
