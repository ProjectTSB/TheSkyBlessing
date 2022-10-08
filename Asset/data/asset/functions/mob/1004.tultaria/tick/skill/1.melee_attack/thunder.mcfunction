#> asset:mob/1004.tultaria/tick/skill/1.melee_attack/thunder
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/1.melee_attack/1.tick

# 演出
    particle instant_effect ~ ~ ~ 0.7 3 0.7 0 50
    particle dust 1 1 10 2.5 ~ ~5 ~ 0.1 5 0.1 0 100
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 1
    playsound entity.lightning_bolt.thunder hostile @p ~ ~ ~ 0.5 2 0
    playsound entity.lightning_bolt.impact hostile @p ~ ~ ~ 0.5 0 0

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
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset