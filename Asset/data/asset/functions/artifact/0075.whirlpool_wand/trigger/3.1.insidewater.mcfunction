#> asset:artifact/0075.whirlpool_wand/trigger/3.1.insidewater
#
# 水の中に敵がいる場合ダメージを基本値100の倍200に
#
# @within function asset:artifact/0075.whirlpool_wand/trigger/3.main

# ダメージ
    # 与えるダメージ = 200
        data modify storage lib: Argument.Damage set value 200f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージを与える
        function lib:damage/modifier
        function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    playsound minecraft:block.bubble_column.upwards_inside player @a ~ ~ ~ 1 1.8
    particle minecraft:splash ~ ~2 ~ 0.4 1 0.4 0.1 100 force
    particle minecraft:poof ~ ~1 ~ 0.1 0.5 0.1 0.1 20 force