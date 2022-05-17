#> asset:mob/0232.honey_leader/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0232.honey_leader/tick/1.trigger

# スキルスコア
    scoreboard players add @s 6G.Tick 1

# スキルを選択
    execute if entity @s[scores={6G.Tick=0}] run function asset:mob/0232.honey_leader/tick/3.skill_select

# 周囲にバフ&回復
    execute if entity @s[scores={6G.SkillSelect=0}] run function asset:mob/0232.honey_leader/tick/4.buff_and_heal

# ビームの予備動作演出
    execute if entity @s[scores={6G.SkillSelect=1,6G.Tick=0}] anchored eyes positioned ^ ^ ^0.3 run function asset:mob/0232.honey_leader/tick/5.ready_beam

# ビーム発射とリセット
    execute if entity @s[scores={6G.SkillSelect=1,6G.Tick=10..}] run function asset:mob/0232.honey_leader/tick/6.shoot_and_reset