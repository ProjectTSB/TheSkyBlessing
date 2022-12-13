#> asset:mob/0273.hell_blade/break
#
#
#
# @within function asset:mob/0273.hell_blade/tick/2.tick

# 松明即壊す
    execute at @s if block ~ ~ ~ #lib:torches run setblock ~ ~ ~ air destroy

# はしご即壊す
    execute at @s if block ~ ~ ~ ladder run setblock ~ ~ ~ air destroy

# 石なら丸石に
    execute if block ~ ~ ~ stone run setblock ~ ~ ~ cobblestone

# 石レンガならヒビ入りに
    execute if block ~ ~ ~ stone_bricks run setblock ~ ~ ~ cracked_stone_bricks

# 羊毛なら0275.destroyed_blockを召喚
    execute if block ~ ~ ~ #wool unless entity @e[scores={MobID=275},distance=..0.01] run function asset:mob/0273.hell_blade/summon_crack

