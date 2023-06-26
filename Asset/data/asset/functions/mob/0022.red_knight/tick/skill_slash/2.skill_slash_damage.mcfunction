#> asset:mob/0022.red_knight/tick/skill_slash/2.skill_slash_damage
#
#
#
# @within function asset:mob/0022.red_knight/tick/skill_slash/1.skill_slash

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 90.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] at @s run function lib:damage/
# リセット
    function lib:damage/reset