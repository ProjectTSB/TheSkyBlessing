#> asset:artifact/0033.magic_shield/trigger/3.2.damage
#
#
#
# @within function asset:artifact/0033.magic_shield/trigger/1.1.damage_trigger

# 演出
    particle block iron_block ~ ~1 ~ 0.5 0.5 0.5 0.2 60
    playsound block.glass.break player @a ~ ~ ~ 1 0.6 0

# タグ消し
    tag @s remove X.MagicShield