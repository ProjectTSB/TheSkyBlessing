#> asset:mob/0236.ksitigarbha/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0236.ksitigarbha/tick/1.trigger

#着地していた場合AlwaysSlowFallを削除
    execute if entity @s[tag=AlwaysSlowFall] if data entity @s {OnGround:1b} run effect clear @s slow_falling
    execute if entity @s[tag=AlwaysSlowFall] if data entity @s {OnGround:1b} run tag @s remove AlwaysSlowFall
