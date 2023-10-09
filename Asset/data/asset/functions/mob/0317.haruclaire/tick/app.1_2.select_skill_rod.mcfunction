#> asset:mob/0317.haruclaire/tick/app.1_2.select_skill_rod
#
# Mobのtick時の処理
#
# @within function asset:mob/0317.haruclaire/tick/app.1_1.select_skill

# カウント増加
    scoreboard players add @s 8T.ActionCount 1

# カウントリセット
    execute if score @s 8T.ActionCount matches 14.. run scoreboard players set @s 8T.ActionCount 1

# 待機
    execute if score @s 8T.ActionCount matches ..1 run tag @s add 8T.Skill.Rod.Idle

# 杖殴り
    execute if score @s 8T.ActionCount matches 2 run tag @s add 8T.Skill.Rod.Attack

# つらら
    execute if score @s 8T.ActionCount matches 3 run tag @s add 8T.Skill.Rod.IcePillar

# 原点から遠い場合，テレポート
    execute if score @s 8T.ActionCount matches 4 if entity @e[type=marker,tag=8T.Marker.SpawnPoint,distance=..12] run scoreboard players add @s 8T.ActionCount 1
    execute if score @s 8T.ActionCount matches 4 unless entity @e[type=marker,tag=8T.Marker.SpawnPoint,distance=..12] run tag @s add 8T.Skill.Rod.Teleport

# 待機
    execute if score @s 8T.ActionCount matches 5 run tag @s add 8T.Skill.Rod.Idle

# あられ
    execute if score @s 8T.ActionCount matches 6 run tag @s add 8T.Skill.Rod.IceBullet

# 移動射撃
    execute if score @s 8T.ActionCount matches 7 if predicate lib:random_pass_per/50 run tag @s add 8T.Skill.Rod.MoveShot.Right
    execute if score @s 8T.ActionCount matches 7 unless entity @s[tag=8T.Skill.Rod.MoveShot.Right] run tag @s add 8T.Skill.Rod.MoveShot.Left

# 待機
    execute if score @s 8T.ActionCount matches 8 run tag @s add 8T.Skill.Rod.Idle

# 射撃
    execute if score @s 8T.ActionCount matches 9 run tag @s add 8T.Skill.Rod.Shot

# 杖殴り
    execute if score @s 8T.ActionCount matches 10 run tag @s add 8T.Skill.Rod.Attack

# 移動射撃
    execute if score @s 8T.ActionCount matches 11 if predicate lib:random_pass_per/50 run tag @s add 8T.Skill.Rod.MoveShot.Right
    execute if score @s 8T.ActionCount matches 11 unless entity @s[tag=8T.Skill.Rod.MoveShot.Right] run tag @s add 8T.Skill.Rod.MoveShot.Left

# テレポート
    execute if score @s 8T.ActionCount matches 12 run tag @s add 8T.Skill.Rod.Teleport

# レーザー
    execute if score @s 8T.ActionCount matches 13 run tag @s add 8T.Skill.Rod.Laser