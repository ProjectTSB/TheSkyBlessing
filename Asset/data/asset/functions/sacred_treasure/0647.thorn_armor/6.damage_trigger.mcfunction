#> asset:sacred_treasure/0647.thorn_armor/6.damage_trigger
#
#
#
# @within tag/function asset:sacred_treasure/damage/from_entity/

# MP10以上かつフルセットなら実行

    execute if entity @s[tag=HZ.FullSet] run function asset:sacred_treasure/0647.thorn_armor/7.fullset_hurt
