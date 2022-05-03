#> asset:mob/0237.lunatic_mage/skill/elemental_confine/4.water_jail_damage
#
#
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/2.water_jail

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=4..9] run function lib:damage/
# リセット
    data remove storage lib: Argument
