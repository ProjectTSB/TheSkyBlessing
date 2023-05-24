#> asset:artifact/0983.icicle_blade/trigger/4.damage
#
#
#
# @within function asset:artifact/0983.icicle_blade/trigger/3.main


# 演出
    particle snowflake ~ ~0.5 ~ 0 1 0 0 5 normal

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 170f
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正function
        execute as @a[tag=this] run function lib:damage/modifier

    # 対象に
        function lib:damage/
# リセット
    function lib:damage/reset
    tag @s remove RB.Hit