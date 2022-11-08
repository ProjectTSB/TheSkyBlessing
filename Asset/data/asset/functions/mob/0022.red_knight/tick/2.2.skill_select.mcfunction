#> asset:mob/0022.red_knight/tick/2.2.skill_select
#
# スキル選ぶぞ
#
# @within function asset:mob/0022.red_knight/tick/wait_time/base_move/tick

# 通常行動停止タグ付与
    tag @s add M.InAction

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const

# スコアを0に戻す
    scoreboard players set @s M.Tick 0
    scoreboard players set @s M.LoopCount 0

# タグ調整
    tag @s remove M.SkillReady

# 必殺カウンターが溜まってたらソレに確定させる
    execute if score @s M.WaveCount matches 4.. run scoreboard players set $Random Temporary 3
    execute if score @s M.UltimateCount matches 9.. run scoreboard players set $Random Temporary 4

# デバッグのコマンド
    #scoreboard players set $Random Temporary 0

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add M.SkillSlash
    execute if score $Random Temporary matches 1 run tag @s add M.SkillCombo
    execute if score $Random Temporary matches 2 run tag @s add M.SkillParry
    execute if score $Random Temporary matches 3 run tag @s add M.SkillWave
    execute if score $Random Temporary matches 4 run tag @s add M.SkillUltimate

# フェイズ2以降、各追加動作の発動カウントを進める
    scoreboard players add @s[scores={M.Phase=2..}] M.WaveCount 1
    scoreboard players add @s[scores={M.Phase=2..}] M.UltimateCount 1
    scoreboard players add @s[scores={M.Phase=2..}] M.AdditionCount 1

# リセット
    scoreboard players reset $Random Temporary