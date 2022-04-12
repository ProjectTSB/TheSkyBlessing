#> asset:mob/0166.flying_potion/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0166.flying_potion/attack/1.trigger
#> Private
# @private
    #declare score_holder $Random

# 効果
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $8 Const
    # 効果を与える
        execute if score $Random Temporary matches 0 run effect give @p[tag=Victim] blindness 5 0
        execute if score $Random Temporary matches 1 run effect give @p[tag=Victim] poison 10 0
        execute if score $Random Temporary matches 2 run effect give @p[tag=Victim] slowness 10 1
        execute if score $Random Temporary matches 3 run effect give @p[tag=Victim] weakness 10 0
        execute if score $Random Temporary matches 4 run effect give @p[tag=Victim] hunger 10 0
        execute if score $Random Temporary matches 5 run effect give @p[tag=Victim] nausea 5 0
        execute if score $Random Temporary matches 6 run effect give @p[tag=Victim] instant_damage 1 0
        execute if score $Random Temporary matches 6 run effect give @p[tag=Victim] mining_fatigue 10 0

    # リセット
        scoreboard players reset $Random Temporary

# 演出
    particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 100
    playsound entity.splash_potion.break hostile @a ~ ~ ~ 1 1

# 自殺する
    tp @s ~ ~-500 ~
    kill @s