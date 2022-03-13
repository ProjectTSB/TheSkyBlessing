#> asset:mob/0274.death_saw_jiki/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0274.death_saw_jiki/tick/1.trigger

# 足元が空気なら少し落下
    execute if block ~ ~-0.5 ~ #lib:no_collision run tp @s ~ ~-0.5 ~

# 前方が階段状なら上にTPする
    execute unless block ^ ^ ^1 #lib:no_collision if block ^ ^1 ^1 #lib:no_collision at @s run tp ~ ~1 ~
# 前方が壁なら方向転換
    execute unless block ^ ^ ^1 #lib:no_collision unless block ^ ^1 ^1 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~
# 前方が2m穴なら適当に方向転換
    execute unless block ~ ~-1 ~ #lib:no_collision if block ^ ^ ^1 #lib:no_collision if block ^ ^-1 ^1 #lib:no_collision if block ^ ^-2 ^1 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~

# プレイヤーが近くにいないなら前進する
    execute unless entity @a[distance=..10] at @s rotated ~ 0 run tp ^ ^ ^0.2
# プレイヤーが近くにいるなら追尾する
    execute if entity @p[distance=5..10] at @s facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-400 facing entity @s eyes positioned as @s rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
    execute if entity @p[distance=..5] at @s facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-100 facing entity @s eyes positioned as @s rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~

# 演出
    playsound entity.sheep.shear hostile @a ~ ~ ~ 0.4 2

# クールダウン
    scoreboard players remove @s[scores={7M.CoolTime=1..}] 7M.CoolTime 1
# ダメージ（スペクテイターでも発動するけどしゃーなし）
    execute unless score @s 7M.CoolTime matches 1.. if entity @e[type=#lib:living,tag=Friend,distance=..0.75] run function asset:mob/0274.death_saw_jiki/tick/3.damage