#> asset:mob/0055.hetukedah/tick/3.skill
#
# モブが持つスキル一覧、ランダムに実行
#
# @within function asset:mob/0055.hetukedah/tick/2.tick
#> Private
# @private
    #declare score_holder $Random

# ランダム
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $3 Const
    # メッセージ出力
        execute if score $Random Temporary matches 0 run function asset:mob/0055.hetukedah/tick/4.skill1_otetebeam
        execute if score $Random Temporary matches 1 run function asset:mob/0055.hetukedah/tick/5.magicattack
        execute if score $Random Temporary matches 2 run function asset:mob/0055.hetukedah/tick/6.speedup

    # リセット
        scoreboard players reset $Random Temporary

# スコアを戻す
    scoreboard players set @s 1J.BossTime 0
# NoAIを戻す
    data merge entity @s {NoAI:0b}