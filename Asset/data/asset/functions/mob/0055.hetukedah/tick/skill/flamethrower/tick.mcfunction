#> asset:mob/0055.hetukedah/tick/skill/flamethrower/tick
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill_active

# 予備動作
    execute if score @s 1J.Tick matches 0 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/windup

# こっち見る
    execute if score @s[tag=1J.Turn.Left] 1J.Tick matches 1..40 facing entity @p eyes run tp @s ~ ~ ~ ~75 0
    execute if score @s[tag=1J.Turn.Right] 1J.Tick matches 1..40 facing entity @p eyes run tp @s ~ ~ ~ ~-75 0

# 警告ビーム
    #execute if score @s 1J.Tick matches 1..40 anchored eyes positioned ^ ^-0.5 ^1 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/alert

# スタート
    execute if score @s 1J.Tick matches 40..100 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/shoot

# リセット
    execute if score @s 1J.Tick matches 160.. run function asset:mob/0055.hetukedah/tick/reset
