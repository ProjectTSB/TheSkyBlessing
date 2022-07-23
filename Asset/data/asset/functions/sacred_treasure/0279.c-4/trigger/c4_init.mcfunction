#> asset:sacred_treasure/0279.c-4/trigger/c4_init
#
#
#
# @within function asset:sacred_treasure/0279.c-4/trigger/c4_summon

#> Private
# @private
    #declare tag 7R.Ceiling
    #declare tag 7R.Floor

# とりあえず上空1000に置いてあるので持ってくる
    tp @s ~ ~ ~

# 天井の場合見た目変える
    execute if entity @e[type=marker,tag=7R.IsCeiling,distance=..3,limit=1] positioned ~ ~1000 ~ run item replace entity @s armor.head with stick{CustomModelData:20250} 1
    execute if entity @e[type=marker,tag=7R.IsCeiling,distance=..3,limit=1] positioned ~ ~1000 ~ run tag @s add 7R.Ceiling
# 床の場合見た目変える
    execute if entity @e[type=marker,tag=7R.IsFloor,distance=..3,limit=1] positioned ~ ~1000 ~ run item replace entity @s armor.head with stick{CustomModelData:20251} 1
    execute if entity @e[type=marker,tag=7R.IsFloor,distance=..3,limit=1] positioned ~ ~1000 ~ run tag @s add 7R.Floor

# 少しずれる共有
    execute at @s if predicate lib:random_pass_per/20 run tp ^0.2 ^ ^
    execute at @s if predicate lib:random_pass_per/20 run tp ^-0.2 ^ ^
    execute at @s if predicate lib:random_pass_per/20 run tp ^0.1 ^ ^
    execute at @s if predicate lib:random_pass_per/20 run tp ^-0.1 ^ ^
# すこしずれる（壁バージョン）
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ~ ~0.2 ~
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ~ ~-0.2 ~
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ~ ~0.1 ~
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ~ ~-0.1 ~
# 少しずれる（床or天井バージョン）
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^ ^ ^0.2
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^ ^ ^-0.2
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^ ^ ^0.1
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^ ^ ^-0.1

# 設置したC4に自身のスコアを入れる
    scoreboard players operation @s 7R.UserID = @p[tag=7R.This] UserID

# initタグの削除
    tag @s remove 7R.Init