#> asset:sacred_treasure/0075.whirlpool_wand/trigger/3.1.insidewater
#
# 水の中に敵がいる場合ダメージを基本値40の倍80に
#
# @within function asset:sacred_treasure/0075.whirlpool_wand/trigger/3.main

# ダメージ
    # 与えるダメージ = 80
        data modify storage lib: Argument.Damage set value 80f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージを与える
        function lib:damage/modifier
        function lib:damage/
# リセット
    data remove storage lib: Argument

# 演出
    playsound minecraft:block.bubble_column.upwards_inside master @a ~ ~ ~ 1 1.8
    particle minecraft:splash ~ ~2 ~ 0.4 1 0.4 0.1 100 force
    particle minecraft:poof ~ ~1 ~ 0.1 0.5 0.1 0.1 20 force