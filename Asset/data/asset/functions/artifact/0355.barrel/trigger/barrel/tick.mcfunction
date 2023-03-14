#> asset:artifact/0355.barrel/trigger/barrel/tick
#
# 樽ごとに実行されるファンクション
#
# @within function asset:artifact/0355.barrel/trigger/3.1.tick_base

# 樽の落下
    tp ~ ~-0.5 ~
# エンティティに当たる
    execute positioned ~-0.5 ~1.8 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,dy=0.02,dz=0,sort=nearest,limit=1] run function asset:artifact/0355.barrel/trigger/barrel/hit
# 地面に当たる
    execute positioned ~ ~1.8 ~ unless block ~ ~0.2 ~ #lib:no_collision run function asset:artifact/0355.barrel/trigger/barrel/break
# 奈落に落ちる
    execute if entity @s[y=-25,dy=-225] run function asset:artifact/0355.barrel/trigger/barrel/break