#> asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.2.attack
#
# エフェクトを消す処理
#
# @within function
#   asset:artifact/0077.swords_of_waterfall_climbing/trigger/3.main

# ここから先は神器側の効果の処理を書く

# タグ付与
    tag @s add 25.Hit

# 攻撃処理
    # 与えるダメージ = 45
        data modify storage lib: Argument.Damage set value 45f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
#ダメージ
    execute as @p[tag=this] run function lib:damage/modifier
    function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    particle minecraft:rain ~ ~ ~ 0 2 0 1 100
    particle minecraft:bubble_pop ~ ~ ~ 0.1 2 0.1 0 100
    playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 1 2 0
    playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 1 2 0