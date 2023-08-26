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
        scoreboard players operation $Random Temporary %= $4 Const
    # ハードだったら動作カウント増やす
        execute if predicate api:global_vars/difficulty/min/hard run scoreboard players add @s 1J.MoveCount 1
    # デバッグ
        #scoreboard players set $Random Temporary 0
        #scoreboard players set @s 1J.MoveCount 5
    # 数回に一回の行動は固定
        execute if score @s 1J.MoveCount matches 5.. run tag @s add 1J.Skill.Summon
        execute if score @s 1J.MoveCount matches 5.. run scoreboard players reset $Random Temporary
    # スキル選択
        execute if score $Random Temporary matches 0 run tag @s add 1J.Skill.OteteBeam
        execute if score $Random Temporary matches 1 run tag @s add 1J.Skill.Explosion
        execute if score $Random Temporary matches 2 run tag @s add 1J.Skill.FlameThrower
        execute if score $Random Temporary matches 3 run tag @s add 1J.Skill.Charge
    # リセット
        scoreboard players reset $Random Temporary

# スコアを戻す
    scoreboard players set @s 1J.BossTime 0