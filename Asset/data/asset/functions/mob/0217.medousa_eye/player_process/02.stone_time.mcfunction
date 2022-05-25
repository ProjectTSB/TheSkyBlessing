#> asset:mob/0217.medousa_eye/player_process/02.stone_time
#
# プレイヤーの石化状態時の処理だよ
#
# @within function asset:mob/0217.medousa_eye/player_process/01.schedule_loop

# 演出
    particle block stone ~ ~1.2 ~ 0.1 0.4 0.1 0 4 normal @a

# 石化時間スコア減少
    scoreboard players remove @s 61.StoneTime 1

# デバフ
    execute if score @s 61.StoneTime matches 20.. run effect give @s slowness 1 4 true
    execute if score @s 61.StoneTime matches 20.. run effect give @s jump_boost 1 128 true

# 死んだ場合リセット
    execute if entity @s[tag=Death] run scoreboard players set @s 61.StoneTime 0

# スケジュールループ
    execute if entity @s[scores={61.StoneTime=1..}] run schedule function asset:mob/0217.medousa_eye/player_process/01.schedule_loop 1t replace

# リセット処理
    execute if score @s 61.StoneTime matches ..0 run tag @s remove 61.Stone
    execute if score @s 61.StoneTime matches ..0 run attribute @s generic.knockback_resistance modifier remove 00000001-0000-0002-0000-00d900000000
    execute if score @s 61.StoneTime matches ..0 run scoreboard players reset @s 61.StoneTime
