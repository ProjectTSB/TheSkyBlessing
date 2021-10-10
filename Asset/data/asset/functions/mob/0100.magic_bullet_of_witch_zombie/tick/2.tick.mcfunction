#> asset:mob/0100.magic_bullet_of_witch_zombie/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0100.magic_bullet_of_witch_zombie/tick/1.trigger

# 移動
    tp @s ^ ^ ^1
# スコア
    scoreboard players add @s 2S.Tick 1

# 火
    execute if entity @s[tag=!2S.Element] run function asset:mob/0100.magic_bullet_of_witch_zombie/tick/3.fire

# 水
    execute if entity @s[tag=2S.Element] run function asset:mob/0100.magic_bullet_of_witch_zombie/tick/5.ice

# 5秒以上存在か地面に接触でkill
    execute if score @s 2S.Tick matches 50.. run kill @s
    execute unless block ~ ~ ~ #lib:no_collision_without_fluid run kill @s