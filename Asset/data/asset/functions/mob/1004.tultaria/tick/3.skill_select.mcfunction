#> asset:mob/1004.tultaria/tick/3.skill_select
#
#
#
# @within function asset:mob/1004.tultaria/tick/**
#> private
# @private
    #declare score_holder $Random


# 通常行動停止タグ付与
    tag @s add RW.InAction

# 小技出しましたタグを消す
    tag @s remove RW.MiniSkillUsed

# スコアを0に戻す
    scoreboard players set @s RW.Tick 0
    scoreboard players set @s RW.LoopCount 0

# チェイス停止
    kill @e[tag=RW.ChaseMarker]

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# フェイズ1～2
    execute if entity @s[scores={RW.Phase=1..2}] run scoreboard players operation $Random Temporary %= $5 Const
# フェイズ3
    execute if entity @s[scores={RW.Phase=3}] run scoreboard players operation $Random Temporary %= $6 Const

# デバッグのコマンド
    scoreboard players set $Random Temporary -1

# スキル選択
    execute if score $Random Temporary matches -1 run tag @s add RW.MiniSkillLaser
    execute if score $Random Temporary matches 0 run tag @s add RW.SkillMelee
    execute if score $Random Temporary matches 1 run tag @s add RW.SkillMeteor
    execute if score $Random Temporary matches 2 run tag @s add RW.SkillCoordinate
    execute if score $Random Temporary matches 3 run tag @s add RW.SkillBall
    execute if score $Random Temporary matches 4 run tag @s add RW.SkillLaser
    execute if score $Random Temporary matches 5 run tag @s add RW.SkillStarfury
    execute if score $Random Temporary matches 6 run tag @s add RW.SkillSummon

# 大技その1
    execute if score $Random Temporary matches 8 run tag @s add RW.SkillDeadly1

# 大技その2
    execute if score $Random Temporary matches 9 run tag @s add RW.SkillDeadly2

# リセット
    scoreboard players reset $Random Temporary