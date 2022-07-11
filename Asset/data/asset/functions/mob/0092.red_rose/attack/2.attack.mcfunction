#> asset:mob/0092.red_rose/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0092.red_rose/attack/1.trigger

# 演出
    execute as @p[tag=Victim] at @s run particle lava ~ ~ ~ 0.1 0 0.1 0 10
    playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 1 2

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 10f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    function lib:damage/reset
