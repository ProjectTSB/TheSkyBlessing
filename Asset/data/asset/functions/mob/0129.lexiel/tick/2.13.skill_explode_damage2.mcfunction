#> asset:mob/0129.lexiel/tick/2.13.skill_explode_damage2
#
#
#
# @within function asset:mob/0129.lexiel/tick/2.11.skill_explode


# 演出
    particle minecraft:explosion ~ ~ ~ 3 1 3 0 30
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    particle minecraft:lava ~ ~ ~ 3 1 3 0.42 00

    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 0 1
    playsound entity.generic.explode master @a ~ ~ ~ 1 0 1

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 13.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=player,gamemode=!creative,gamemode=!spectator,distance=..5] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument
