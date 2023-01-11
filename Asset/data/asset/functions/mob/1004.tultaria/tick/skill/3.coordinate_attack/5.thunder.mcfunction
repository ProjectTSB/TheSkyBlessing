#> asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/5.thunder
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/1.tick

# 演出
    particle electric_spark ~ ~ ~ 0.3 3 0.3 0.1 50
    particle dust 1 1 1 0.5 ~ ~3 ~ 0.5 3 0.5 0 200
    particle dust 1 1 10 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 1

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function lib:damage/
# リセット
    function lib:damage/reset
