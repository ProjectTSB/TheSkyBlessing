#> asset:mob/1019.bigshot/tick/5.hit
#
#
#
# @within function asset:mob/1019.bigshot/tick/2.tick

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @p[tag=!PlayerShouldInvulnerable] run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s