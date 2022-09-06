#> asset:mob/1004.tultaria/tick/armor_stand_check
#
# アマスタにタグをつけておくやつ
#
# @within function asset:mob/1004.tultaria/tick/2.tick


# 雪玉があるかみるなかったらリセットする
    execute unless entity @e[type=snowball,tag=RW.ModelCore,distance=..0.01] run say リセットしてください
# 雪玉の上のアマスタにタグ付与
    execute positioned ~ ~0.29 ~ run tag @e[type=armor_stand,tag=RW.Model,distance=..0.01,limit=2] add RW.ModelChangeTarget