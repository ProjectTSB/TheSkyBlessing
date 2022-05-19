#> asset:mob/0059.jack_o_lantern/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0059.jack_o_lantern/hurt/1.trigger

#> Private
# @private
    #declare score_holder $MobCount

# 演出
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.8 1.8 0
    particle dust 1 0.651 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    particle dust 0.851 0 1 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a

# 眷属召喚までの被ダメカウント
    scoreboard players add @s 1N.HurtCount 1

# 発光状態までのスコア蓄積
    scoreboard players add @s 1N.Surprise 3

# 5回被ダメ時に周囲に眷属が2体以下なら3体召喚
    execute store result score $MobCount Temporary if entity @e[type=vex,scores={MobID=224},distance=..50]
    execute if entity @s[scores={1N.HurtCount=5..}] if score $MobCount Temporary matches ..2 run function asset:mob/0059.jack_o_lantern/hurt/4.summon
    scoreboard players reset $MobCount Temporary

# スコア1N.Glowingが1..59の場合、即座にそのスコアが140になる
    execute if score @s 1N.Glowing matches 1..59 run function asset:mob/0059.jack_o_lantern/hurt/3.shorten_glowing