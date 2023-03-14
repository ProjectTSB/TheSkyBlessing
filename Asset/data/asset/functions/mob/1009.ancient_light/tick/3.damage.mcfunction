#> asset:mob/1009.ancient_light/tick/3.damage
#
#
#
# @within function asset:mob/1009.ancient_light/tick/2.tick


# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0
    playsound item.trident.riptide_3 hostile @a ~ ~ ~ 1 2

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
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s