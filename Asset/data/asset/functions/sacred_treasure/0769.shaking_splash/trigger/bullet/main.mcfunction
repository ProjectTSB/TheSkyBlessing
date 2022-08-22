#> asset:sacred_treasure/0769.shaking_splash/trigger/bullet/main
#
# 弾が飛んでいる時の処理
#
# @within function asset:sacred_treasure/0769.shaking_splash/trigger/bullet/loop

# 演出
    particle minecraft:dust_color_transition 0 1 1 1.4 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0 8
    particle bubble ~ ~ ~ 0.3 0.3 0.3 0 8 normal @a
    particle dolphin ~ ~ ~ 0.3 0.3 0.3 0 8
    playsound block.bubble_column.bubble_pop player @a ~ ~ ~ 1 0 0
    playsound block.bubble_column.bubble_pop player @a ~ ~ ~ 1 0.5 0
    execute if entity @s[scores={LD.Tick=..5}] run playsound block.fire.extinguish player @a ~ ~ ~ 0.05 1.5 0
    #playsound minecraft:block.bubble_column.upwards_ambient player @a ~ ~ ~ 0.2 1 0

# スコア
    scoreboard players add @s LD.Tick 1

# ヒット
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,dx=0,limit=1] run function asset:sacred_treasure/0769.shaking_splash/trigger/bullet/hit

# 消滅
    execute if entity @s[scores={LD.Tick=80..}] run kill @s

# ブロックに当たった場合消える
    execute unless block ^ ^ ^0.9 #lib:no_collision run kill @s

# 移動
    tp @s ^ ^ ^0.9 ~ ~0.5

# ループ
    schedule function asset:sacred_treasure/0769.shaking_splash/trigger/bullet/loop 1t replace