#> asset:sacred_treasure/0279.c-4/trigger/c4_init
#
#
#
# @within function asset:sacred_treasure/0279.c-4/trigger/c4summon

#> Private
# @private
    #declare tag 7R.Ceiling
    #declare tag 7R.Floor

# とりあえず上空100に置いてあるので持ってくる
    tp @s ~ ~ ~

# もし召喚したアマスタが壁に沿っていない場合、モデルを変える。ただし天井がある場合
    execute at @s if block ~ ~ ~1 #lib:no_collision if block ~ ~ ~-1 #lib:no_collision if block ~1 ~ ~ #lib:no_collision if block ~-1 ~ ~ #lib:no_collision run item replace entity @s armor.head with stick{CustomModelData:20250} 1
    execute at @s if block ~ ~ ~1 #lib:no_collision if block ~ ~ ~-1 #lib:no_collision if block ~1 ~ ~ #lib:no_collision if block ~-1 ~ ~ #lib:no_collision unless block ~ ~1 ~ #lib:no_collision run tag @s add 7R.Ceiling
# もし召喚したアマスタが壁に沿っていない場合、モデルを変える
    execute at @s if block ~ ~ ~1 #lib:no_collision if block ~ ~ ~-1 #lib:no_collision if block ~1 ~ ~ #lib:no_collision if block ~-1 ~ ~ #lib:no_collision if block ~ ~1 ~ #lib:no_collision run item replace entity @s armor.head with stick{CustomModelData:20251} 1
    execute at @s if block ~ ~ ~1 #lib:no_collision if block ~ ~ ~-1 #lib:no_collision if block ~1 ~ ~ #lib:no_collision if block ~-1 ~ ~ #lib:no_collision if block ~ ~1 ~ #lib:no_collision run tag @s add 7R.Floor

# 召喚したC4が壁を向いていないなら向くまでTP。向けなかったらそれまで
    execute at @s if block ^ ^ ^1 #lib:no_collision run tp @s ~ ~ ~ ~90 ~
    execute at @s if block ^ ^ ^1 #lib:no_collision run tp @s ~ ~ ~ ~90 ~
    execute at @s if block ^ ^ ^1 #lib:no_collision run tp @s ~ ~ ~ ~90 ~
    execute at @s if block ^ ^ ^1 #lib:no_collision run tp @s ~ ~ ~ ~90 ~

# すこしずれる（壁バージョン）
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^0.2 ^ ^
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^-0.2 ^ ^
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ~ ~0.2 ~
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ~ ~-0.2 ~
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^0.1 ^ ^
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^-0.1 ^ ^
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ~ ~0.1 ~
    execute at @s if entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ~ ~-0.1 ~
# 少しずれる（床or天井バージョン）
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^0.2 ^ ^
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^-0.2 ^ ^
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^ ^ ^0.2
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^ ^ ^-0.2
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^0.1 ^ ^
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^-0.1 ^ ^
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^ ^ ^0.1
    execute at @s unless entity @s[tag=!7R.Ceiling,tag=!7R.Floor] if predicate lib:random_pass_per/20 run tp ^ ^ ^-0.1

# 設置したC4に自身のスコアを入れる
    scoreboard players operation @s 7R.UserID = @p[tag=7R.This] UserID


# initタグの削除
    tag @s remove 7R.Init