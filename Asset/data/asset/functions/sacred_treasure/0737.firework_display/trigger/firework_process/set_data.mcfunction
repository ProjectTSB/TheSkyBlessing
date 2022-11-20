#> asset:sacred_treasure/0737.firework_display/trigger/firework_process/set_data
#
#
#
# @within function asset:sacred_treasure/0737.firework_display/trigger/firework_process/summon

# データ適用
    data modify entity @s LifeTime set from storage asset:temp Firework.LifeTime
    data modify entity @s FireworksItem.tag.Fireworks.Explosions[] set from storage asset:temp Firework.Explosions
    data modify entity @s FireworksItem.tag.Fireworks.Explosions[].Colors set from storage asset:temp Firework.Colors

# Initタグを消す
    tag @s remove FireworkInit