#> asset:mob/0059.jack_o_lantern/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/1.trigger

# 演出
    particle dust 1 0.6 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal @a
    particle dust 0.851 0 1 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal @a

# 常時耐性
    effect give @s resistance 9 1 true

# ハメ対策
    execute unless block ~ ~0.5 ~ #lib:no_collision at @p run function asset:mob/0059.jack_o_lantern/tick/spread_tp

# スコアを増やす
    scoreboard players add @s 1N.Tick 1

# プレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s 1N.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s 1N.Tick -60

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s 1N.Tick matches 0 run function asset:mob/0059.jack_o_lantern/tick/3.skill_select

# 選択したスキル発動
    execute if score @s 1N.Tick matches 0.. run function asset:mob/0059.jack_o_lantern/tick/4.skill_active

# Hurt時に付くタグを消す
    tag @s[tag=1N.Hurt] remove 1N.Hurt