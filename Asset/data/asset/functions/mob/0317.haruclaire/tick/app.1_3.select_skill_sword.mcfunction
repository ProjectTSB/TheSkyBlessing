
#> asset:mob/0317.haruclaire/tick/app.1_3.select_skill_sword
#
# Mobのtick時の処理
#
# @within function asset:mob/0317.haruclaire/tick/app.1_1.select_skill

# カウント増加
    scoreboard players add @s 8T.ActionCount 1

# カウントリセット
    execute if score @s 8T.ActionCount matches 13.. run scoreboard players set @s 8T.ActionCount 1

# 待機
    execute if score @s 8T.ActionCount matches ..1 run tag @s add 8T.Skill.Sword.Idle

# 斬撃コンボ
    execute if score @s 8T.ActionCount matches 2 run tag @s add 8T.Skill.Sword.Slash

# 待機
    execute if score @s 8T.ActionCount matches 3 run tag @s add 8T.Skill.Sword.Idle

# ワープ斬りコンボ
    execute if score @s 8T.ActionCount matches 4 run tag @s add 8T.Skill.Sword.Warp

# 待機
    execute if score @s 8T.ActionCount matches 5 run tag @s add 8T.Skill.Sword.Idle

# レーザー斬りコンボ
    execute if score @s 8T.ActionCount matches 6 run tag @s add 8T.Skill.Sword.Laser

# 待機
    execute if score @s 8T.ActionCount matches 7 run tag @s add 8T.Skill.Sword.Idle

# 溜め斬りコンボ
    execute if score @s 8T.ActionCount matches 8 run tag @s add 8T.Skill.Sword.Charge

# 待機
    execute if score @s 8T.ActionCount matches 9 run tag @s add 8T.Skill.Sword.Idle

# ひさめコンボ
    execute if score @s 8T.ActionCount matches 10 run tag @s add 8T.Skill.Sword.IceRain

# ながめに待機
    execute if score @s 8T.ActionCount matches 11 run tag @s add 8T.Skill.Sword.Idle
    execute if score @s 8T.ActionCount matches 12 run tag @s add 8T.Skill.Sword.Idle
