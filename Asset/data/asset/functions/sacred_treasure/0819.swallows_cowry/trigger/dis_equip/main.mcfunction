#> asset:sacred_treasure/0819.swallows_cowry/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0819.swallows_cowry/trigger/dis_equip/

# バフを削除
    effect clear @s fire_resistance
    effect clear @s haste
    effect clear @s resistance
    effect clear @s slow_falling
