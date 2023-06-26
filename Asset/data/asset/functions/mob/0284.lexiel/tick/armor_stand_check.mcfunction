#> asset:mob/0284.lexiel/tick/armor_stand_check
#
# アマスタにタグをつけておくやつ
#
# @within function asset:mob/0284.lexiel/tick/2.tick


# 雪玉があるかみるなかったらリセットする
    execute unless entity @e[type=snowball,tag=7W.ModelCore,distance=..0.01] run function asset:mob/0284.lexiel/tick/armorstand_respawn
# 雪玉の上のアマスタにタグ付与
    execute positioned ~ ~0.29 ~ run tag @e[type=armor_stand,tag=7W.Model,distance=..0.01,limit=2] add 7W.ModelChangeTarget