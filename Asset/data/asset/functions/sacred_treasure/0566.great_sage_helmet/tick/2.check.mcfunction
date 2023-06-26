#> asset:artifact/0566.great_sage_helmet/tick/2.check
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/tick/1.fullset_check

# 数分ごとに30%の確率で喋る
    scoreboard players add @s FQ.TalkTime 1

# 喋る
    execute if score @s FQ.TalkTime matches 6000.. if predicate lib:random_pass_per/60 run function asset:artifact/0566.great_sage_helmet/tick/3.talk

# 20%の確率で好感度を1上げる
    execute if score @s FQ.TalkTime matches 6000.. if predicate lib:random_pass_per/20 run scoreboard players add @s FQ.Favorability 1

# スコアリセット
    execute if score @s FQ.TalkTime matches 6000.. run scoreboard players set @s FQ.TalkTime 0