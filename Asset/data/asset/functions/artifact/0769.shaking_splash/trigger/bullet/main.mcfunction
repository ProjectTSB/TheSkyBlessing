#> asset:artifact/0769.shaking_splash/trigger/bullet/main
#
# 弾が飛んでいる時の処理
#
# @within function asset:artifact/0769.shaking_splash/trigger/bullet/loop

# 演出
    particle dust 0.8 500000000 1000000000 1 ~ ~ ~ 0.2 0.2 0.2 0 8
    particle bubble ~ ~ ~ 0.1 0.1 0.1 0 4 normal @a
    particle dolphin ~ ~ ~ 0.1 0.1 0.1 0 4 normal @a
    playsound block.bubble_column.bubble_pop neutral @a ~ ~ ~ 1.3 0 0
    playsound block.bubble_column.bubble_pop neutral @a ~ ~ ~ 1.3 0.5 0

# スコア
    scoreboard players add @s LD.Tick 1

# 雪玉がいない場合ヒット
    execute unless predicate lib:is_vehicle run function asset:artifact/0769.shaking_splash/trigger/bullet/hit

# 一定時間経過で雪玉ごと消滅
    execute if entity @s[scores={LD.Tick=80..}] run kill @e[type=snowball,tag=LD.Bullet,distance=..0.01,sort=nearest,limit=1]
    execute if entity @s[scores={LD.Tick=80..}] run kill @s

# ループ
    schedule function asset:artifact/0769.shaking_splash/trigger/bullet/loop 1t replace