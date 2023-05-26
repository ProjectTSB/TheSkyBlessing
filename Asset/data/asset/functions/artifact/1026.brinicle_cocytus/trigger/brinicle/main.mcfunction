#> asset:artifact/1026.brinicle_cocytus/trigger/brinicle/main
#
# ループ処理
#
# @within function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/loop

# 地面に着弾するまで
    execute if entity @s[tag=!SI.OnGround] run function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/not_on_ground

# 着地後
    execute if entity @s[tag=SI.OnGround] rotated ~ 0 run function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/on_ground

# スコア
    scoreboard players add @s SI.Tick 1

# 消滅
    execute if entity @s[scores={SI.Tick=200..}] run kill @s

# ループ
    schedule function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/loop 1t replace