#> asset:sacred_treasure/0033.magic_shield/3.3.take_damage_tag_remove
#
# タグ消し
#
# @within function asset:sacred_treasure/0033.magic_shield/3.2.take_damage


# 演出
    particle block iron_block ~ ~1 ~ 0.5 0.5 0.5 0.2 60
    playsound block.glass.break master @a ~ ~ ~ 1 0.6 0

# タグ消し
    tag @s remove X.MagicShield