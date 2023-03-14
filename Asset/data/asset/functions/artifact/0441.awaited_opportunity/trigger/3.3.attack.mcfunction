#> asset:artifact/0441.awaited_opportunity/trigger/3.3.attack
#
# 破壊っわす
#
# @within function asset:artifact/0441.awaited_opportunity/trigger/3.main

# 演出
    particle minecraft:block redstone_block ~ ~1 ~ 0.1 0.1 0.1 1 10

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 39.5f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
# 補正function
    execute as @p[tag=this] run function lib:damage/modifier
# 対象に
    function lib:damage/
# リセット
    function lib:damage/reset