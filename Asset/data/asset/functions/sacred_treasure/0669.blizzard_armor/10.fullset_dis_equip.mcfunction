#> asset:sacred_treasure/0669.blizzard_armor/10.fullset_dis_equip
#
#
#
# @within function asset:sacred_treasure/0668.blizzard_helm/dis_equip/main
# @within function asset:sacred_treasure/0669.blizzard_armor/dis_equip/main
# @within function asset:sacred_treasure/0670.blizzard_leggings/dis_equip/main
# @within function asset:sacred_treasure/0671.blizzard_boots/dis_equip/main

# タグ削除
    tag @s remove IL.Fullset

# 音用スコアのリセット
    scoreboard players reset @s IL.SoundLoop

# 音を消す
    stopsound @a[distance=..15] master minecraft:item.elytra.flying