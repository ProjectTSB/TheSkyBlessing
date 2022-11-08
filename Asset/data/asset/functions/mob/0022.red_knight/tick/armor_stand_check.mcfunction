#> asset:mob/0022.red_knight/tick/armor_stand_check
#
#
#
# @within function
#   asset:mob/0022.red_knight/tick/2.tick
#   asset:mob/0022.red_knight/death/**

# モデルがなかったら無理やり読んでくる
    execute unless entity @e[type=snowball,tag=M.ModelCore,distance=..1] run say リセットしてください
# 雪玉の上のアマスタにタグ付与
    execute positioned ~ ~0.29 ~ run tag @e[type=armor_stand,tag=M.Model,distance=..1,limit=2] add M.ModelChangeTarget