#> asset:sacred_treasure/0077.swords_of_waterfall_climbing/trigger/3.3.landing_attack
#
# エフェクトを消す処理
#
# @within function
#   asset:sacred_treasure/0077.swords_of_waterfall_climbing/trigger/3.1.effectclear

# ここから先は神器側の効果の処理を書く

# タグを消しちゃう
    tag @s remove 25.Landing

# 攻撃処理
    # 与えるダメージ = 25
        data modify storage lib: Argument.Damage set value 65.f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
#ダメージ
    function lib:damage/modifier
    execute as @e[tag=Enemy,distance=..4] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 演出
    particle minecraft:rain ~ ~ ~ 1 1 1 1 100
    particle minecraft:bubble_pop ~ ~ ~ 1 1 1 0 100
    particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 10
    playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 1 2 0
    playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 1 2 0
    playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0