#> asset:mob/0232.honey_leader/tick/3.skill_select
#
# スキル選択
#
# @within function asset:mob/0232.honey_leader/tick/2.tick

# まず0に設定 0の場合回復スキルを使う
    scoreboard players set @s 6G.SkillSelect 0

# もし視点先にプレイヤーがいたなら確率でビームにする
    execute positioned ^ ^ ^16 if entity @p[gamemode=!spectator,distance=..16] if predicate lib:random_pass_per/70 run scoreboard players set @s 6G.SkillSelect 1