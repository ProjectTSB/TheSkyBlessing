#> asset:mob/0216.gray_guardian/tick/3.skill_axe/3.damage
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/3.skill_axe/1.skill_axe


# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=player,gamemode=!creative,gamemode=!spectator,distance=..2.2] at @s run function lib:damage/
        execute as @e[type=#lib:living,tag=Friend,tag=!Uninterferable,distance=..2.2] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument