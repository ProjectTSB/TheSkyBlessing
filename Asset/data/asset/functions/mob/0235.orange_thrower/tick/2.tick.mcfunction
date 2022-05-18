#> asset:mob/0235.orange_thrower/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0235.orange_thrower/tick/1.trigger

# 演出
    particle dust 0 1 0 1.3 ~ ~2 ~ 0.05 0 0.05 0 1 normal @a

# スコア
    execute if entity @a[distance=..32] if entity @s[scores={6J.Tick=..0}] run scoreboard players add @s 6J.Tick 1

# スコアが0の時にスペクテイターしかいない場合失敗してスコアを少し戻す
    execute if entity @s[scores={6J.Tick=0}] unless entity @a[gamemode=!spectator,distance=..32] run scoreboard players set @s 6J.Tick -60

# オレンジ召喚
    execute if entity @s[scores={6J.Tick=0..}] run function asset:mob/0235.orange_thrower/tick/3.summon_orange