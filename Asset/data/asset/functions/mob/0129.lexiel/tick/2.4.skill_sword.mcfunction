#> asset:mob/0129.lexiel/tick/2.4.skill_sword
#
# 剣技を使います
#
# @within function asset:mob/0129.lexiel/tick/2.3.skill_active

# 構え

# 攻撃判定



    execute if score @s 3L.Tick matches 90 run function asset:mob/0129.lexiel/tick/2.5.skill_sword_damage

# テレポート
    execute if score @s 3L.Tick matches 90 run function asset:mob/0129.lexiel/tick/2.6.skill_sword_teleport

# スコアを消す
    execute if score @s 3L.Tick matches 90 run scoreboard players reset @s 3L.Tick