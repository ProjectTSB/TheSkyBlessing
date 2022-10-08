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
# HP50%以下
    execute if entity @s[tag=RW.HPless50per] run scoreboard players operation $Random Temporary %= $7 Const
# HP50%より上75%未満
    execute if entity @s[tag=RW.HPless75per] unless entity @s[tag=RW.HPless50per] run scoreboard players operation $Random Temporary %= $6 Const
# HP75%以上
    execute unless entity @s[tag=RW.HPless50per,tag=RW.HPless75per] run scoreboard players operation $Random Temporary %= $3 Const

# デバッグのコマンド
    scoreboard players set $Random Temporary 4

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add RW.SkillMelee
    execute if score $Random Temporary matches 1 run tag @s add RW.SkillMeteor
    execute if score $Random Temporary matches 2 run tag @s add RW.SkillCoordinate
    execute if score $Random Temporary matches 3 run tag @s add RW.SkillOffCoordinate
    execute if score $Random Temporary matches 4 run tag @s add RW.SkillBall
    execute if score $Random Temporary matches 5 run tag @s add RW.SkillStarfury
    execute if score $Random Temporary matches 6 run tag @s add RW.SkillSummon
    execute if score $Random Temporary matches 7 run tag @s add RW.SkillLaser

# 大技その1
    execute if score $Random Temporary matches 8 run tag @s add RW.SkillDeadly1

# 大技その2
    execute if score $Random Temporary matches 9 run tag @s add RW.SkillDeadly2

# リセット
    scoreboard players reset $Random Temporary