#> asset:mob/1004.tultaria/tick/skill/phase3/select_skill/1.select
#
#
#
# @within function asset:mob/1004.tultaria/tick/wait_time/base_move/tick
#> private
# @private
    #declare score_holder $Random

# チェイス停止
    kill @e[tag=RW.ChaseMarker]
    tag @s remove RW.ChaseShot

# 通常行動停止タグ付与
    tag @s add RW.InAction

# スコアを0に戻す
    scoreboard players set @s RW.Tick 0

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算するやーつ
    execute if entity @s[tag=RW.HPless50per] run scoreboard players operation $Random Temporary %= $4 Const

# デバッグのコマンド
    scoreboard players set $Random Temporary 0

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add RW.MiniSkillChase
    execute if score $Random Temporary matches 1 run tag @s add RW.MiniSkillPlace
    execute if score $Random Temporary matches 2 run tag @s add RW.MiniSkillDash

# リセット
    scoreboard players reset $Random Temporary