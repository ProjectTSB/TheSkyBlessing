#> asset:mob/0022.red_knight/tick/2.9.skill_beam_damage
#
#
#
# @within function asset:mob/0022.red_knight/tick/2.8.skill_beam

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=player,gamemode=!creative,gamemode=!spectator,distance=..2] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument