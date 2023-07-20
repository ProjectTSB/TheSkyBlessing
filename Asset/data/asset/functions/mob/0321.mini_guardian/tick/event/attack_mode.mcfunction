#> asset:mob/0321.mini_guardian/tick/event/attack_mode
#
# 付近にプレイヤーがいるなら
#
# @within function asset:mob/0321.mini_guardian/tick/2.tick

# 攻撃モードに移行
    tag @s add 8X.Mode.Attack

# Tick加算
    scoreboard players add @s 8X.Tick 1

# こっちを狙う
    execute at @s if score @s 8X.Tick matches 0..40 facing entity @p feet positioned ^ ^ ^-200 rotated as @s positioned ^ ^ ^-1000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# 照射開始動作
    execute if score @s 8X.Tick matches 40 run function asset:mob/0321.mini_guardian/tick/event/start_attack

# レーザー照射
    execute if score @s 8X.Tick matches 40..159 run function asset:mob/0321.mini_guardian/tick/event/shoot_laser

# 攻撃終了後、ちょっと泳ぐ
    execute at @s if score @s 8X.Tick matches 160..240 facing entity @p feet positioned ^ ^ ^-50 rotated as @s positioned ^ ^ ^-3000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.1 ~ ~

# 攻撃動作終了
    execute if score @s 8X.Tick matches 240 run function asset:mob/0321.mini_guardian/tick/event/reset
