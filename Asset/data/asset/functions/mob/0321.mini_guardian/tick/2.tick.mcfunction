#> asset:mob/0321.mini_guardian/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0321.mini_guardian/tick/1.trigger

# スコア関連
    scoreboard players remove @s[scores={8X.HurtTime=0..}] 8X.HurtTime 1

# 攻撃中じゃなければ移動
    execute unless score @s[tag=!8X.Mode.Attack] 8X.HurtTime matches 0..40 unless score @s 8X.Tick matches 40.. facing entity @p feet positioned ^ ^ ^-50 rotated as @s positioned ^ ^ ^-3000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.1 ~ ~

# 付近にプレイヤーがいたら攻撃待機
    execute if entity @a[distance=..8] run tag @s add 8X.Mode.Attack

# 攻撃モード
    execute if entity @s[tag=8X.Mode.Attack] anchored eyes positioned ^ ^ ^1 positioned ~ ~-0.1 ~ run function asset:mob/0321.mini_guardian/tick/event/attack_mode

# 遠くに離れたら攻撃モード終了
    execute if entity @s[tag=8X.Mode.Attack] unless entity @a[distance=..15] run function asset:mob/0321.mini_guardian/tick/event/reset

# のけぞりから復帰
    data modify entity @s[scores={8X.HurtTime=..0}] NoAI set value 1b

# 接地で上を向く
    execute positioned ~ ~1.5 ~ unless block ~ ~-1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute positioned ~ ~1.5 ~ unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# カベにぶつかった際の処理
    execute positioned ~ ~1.5 ~ unless block ^ ^ ^1 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute positioned ~ ~1.5 ~ unless block ^ ^ ^0.4 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
