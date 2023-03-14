#> asset:artifact/0954.inverted_parachute/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0954.inverted_parachute/trigger/dis_equip/

playsound minecraft:entity.leash_knot.break player @a ~ ~ ~ 0.75 0
effect clear @s levitation