#> asset:mob/0092.red_rose/tick/2.1.skill
#
#
#
# @within function asset:mob/0092.red_rose/tick/2.tick

# 演出
    particle minecraft:explosion ~ ~ ~ 3 1 3 0 30
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    particle minecraft:lava ~ ~ ~ 2 1 2 0.42 100

    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 0
    playsound entity.generic.explode master @a ~ ~ ~ 1 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=player,gamemode=!creative,gamemode=!spectator,distance=..4] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# スコアを戻す
    scoreboard players set @s 2K.Time 0

# NoAIを戻す
    data modify entity @s NoAI set value 0