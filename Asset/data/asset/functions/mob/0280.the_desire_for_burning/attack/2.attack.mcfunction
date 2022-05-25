#> asset:mob/0280.the_desire_for_burning/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0280.the_desire_for_burning/attack/1.trigger


# 演出
    execute at @p[tag=Victim,distance=..100] run particle flame ~ ~1.5 ~ 0.5 0.5 0.5 0.1 40 normal @a
    execute at @p[tag=Victim,distance=..100] run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.4 1.2 0

# もやす
    execute if predicate world_manager:area/02.islands at @p[tag=Victim,distance=..100] run fill ~1.5 ~1.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 fire replace #lib:air

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 19.5
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..100] run function lib:damage/
# リセット
    function lib:damage/reset