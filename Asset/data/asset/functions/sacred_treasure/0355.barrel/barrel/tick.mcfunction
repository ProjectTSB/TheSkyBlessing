#> asset:sacred_treasure/0355.barrel/barrel/tick
#
#　樽ごとに実行されるファンクション
#
# @within function asset:sacred_treasure/0355.barrel/3.1.tick_base

# 樽の落下
    tp ~ ~-0.5 ~
# エンティティに当たる
    execute positioned ~ ~1.8 ~ if entity @e[type=!player,dx=0.5,dy=0.05,dz=0.5] run function asset:sacred_treasure/0355.barrel/barrel/hit
# 地面に当たる
    execute positioned ~ ~1.8 ~ unless block ~ ~0.2 ~ #lib:no_collision run function asset:sacred_treasure/0355.barrel/barrel/break
# 奈落に落ちる
    #execute if entity @s[y=-1] run function asset:sacred_treasure/0355.barrel/barrel/break