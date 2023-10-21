#> asset:mob/0327.eclael/tick/app.1_2.select_skill_former
#
# 使用するスキルを決定する・前半戦
#
# @within function asset:mob/0327.eclael/tick/app.1_1.select_skill

# カウント増加
    scoreboard players add @s 93.ActionCount 1

# カウントリセット
    execute if score @s 93.ActionCount matches 20.. run scoreboard players set @s 93.ActionCount 1

# 待機
    execute if score @s 93.ActionCount matches ..0 run tag @s add 93.Skill.Former.Idle
# 居合斬り
    execute if score @s 93.ActionCount matches 1 run tag @s add 93.Skill.Former.Iai
# 連続斬り
    execute if score @s 93.ActionCount matches 2 run tag @s add 93.Skill.Former.Slash
# 魔法
    execute if score @s 93.ActionCount matches 3 run tag @s add 93.Skill.Former.Magic
# 射撃
    execute if score @s 93.ActionCount matches 4 run tag @s add 93.Skill.Former.Shot
# 曲射
    execute if score @s 93.ActionCount matches 5 run tag @s add 93.Skill.Former.UpperShot
# 待機
    execute if score @s 93.ActionCount matches 6 run tag @s add 93.Skill.Former.Idle
# 簡易魔法
    execute if score @s 93.ActionCount matches 7 run tag @s add 93.Skill.Former.ShortMagic
# 居合斬り
    execute if score @s 93.ActionCount matches 8 run tag @s add 93.Skill.Former.Iai
# 射撃
    execute if score @s 93.ActionCount matches 9 run tag @s add 93.Skill.Former.Shot
# 簡易魔法
    execute if score @s 93.ActionCount matches 10 run tag @s add 93.Skill.Former.ShortMagic
# 待機
    execute if score @s 93.ActionCount matches 11 run tag @s add 93.Skill.Former.Idle
# 簡易魔法
    execute if score @s 93.ActionCount matches 12 run tag @s add 93.Skill.Former.ShortMagic
# 連続斬り
    execute if score @s 93.ActionCount matches 13 run tag @s add 93.Skill.Former.Slash
# 曲射
    execute if score @s 93.ActionCount matches 14 run tag @s add 93.Skill.Former.UpperShot
# 待機
    execute if score @s 93.ActionCount matches 15 run tag @s add 93.Skill.Former.Idle
# 魔法
    execute if score @s 93.ActionCount matches 16 run tag @s add 93.Skill.Former.Magic
# 居合斬り
    execute if score @s 93.ActionCount matches 17 run tag @s add 93.Skill.Former.Iai
# 射撃
    execute if score @s 93.ActionCount matches 18 run tag @s add 93.Skill.Former.Shot
# 居眠り
    execute if score @s 93.ActionCount matches 19 run tag @s add 93.Skill.Former.Idle.Sleep
