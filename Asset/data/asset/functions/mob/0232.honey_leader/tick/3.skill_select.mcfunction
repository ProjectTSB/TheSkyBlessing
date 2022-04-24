#> asset:mob/0232.honey_leader/tick/3.skill_select
#
# スキル選択
#
# @within function asset:mob/0232.honey_leader/tick/2.tick

#> Private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# 剰余算する
    scoreboard players operation $Random Temporary %= $2 Const
# スコアセット
    scoreboard players operation @s 6G.SkillSelect = $Random Temporary

# もし視点先にプレイヤーがいたなら確率でビームを優先する
    execute positioned ^ ^ ^16 if entity @p[gamemode=!spectator,distance=..16] if predicate lib:random_pass_per/60 run scoreboard players set @s 6G.SkillSelect 1

# リセット
    scoreboard players reset $Random Temporary