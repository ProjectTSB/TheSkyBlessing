#> asset:mob/0055.hetukedah/tick/skill_select
#
# モブが持つスキル一覧、ランダムに実行
#
# @within function asset:mob/0055.hetukedah/tick/2.tick
#> Private
# @private
    #declare score_holder $Random

# Tick0に戻す
    scoreboard players set @s 1J.Tick 0

# 行動中としてタグ付与
    tag @s add 1J.InAction

# ランダム
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $3 Const
    # デバッグ
        scoreboard players set $Random Temporary 0
    # スキル選択
        execute if score $Random Temporary matches 0 run tag @s add 1J.Skill.OteteBeam
        execute if score $Random Temporary matches 1 run function asset:mob/0055.hetukedah/tick/5.magicattack
        execute if score $Random Temporary matches 2 run function asset:mob/0055.hetukedah/tick/6.speedup

    # リセット
        scoreboard players reset $Random Temporary

# スコアを戻す
    scoreboard players set @s 1J.BossTime 0