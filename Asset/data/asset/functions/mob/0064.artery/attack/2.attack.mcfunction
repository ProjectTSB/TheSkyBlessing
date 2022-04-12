#> asset:mob/0064.artery/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0064.artery/attack/1.trigger

# 周りのmobにパワー付与
    effect give @e[type=#lib:living,tag=Enemy,distance=..5] strength 6 0 true

# 演出
    playsound block.note_block.basedrum hostile @a ~ ~ ~ 1.3 0.5 0
    particle dust 0.769 0 0 2 ~ ~1 ~ 0.6 0.6 0.6 0 30 normal @a