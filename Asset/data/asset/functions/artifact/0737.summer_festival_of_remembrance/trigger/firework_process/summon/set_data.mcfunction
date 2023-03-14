#> asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/summon/set_data
#
# storageに入れたデータを適用する
#
# @within function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/summon/

# データ適用
    data modify entity @s LifeTime set from storage asset:temp Firework.LifeTime
    data modify entity @s FireworksItem.tag.Fireworks.Explosions[] set from storage asset:temp Firework.Explosions
    data modify entity @s FireworksItem.tag.Fireworks.Explosions[].Colors set from storage asset:temp Firework.Colors

# Initタグを消す
    tag @s remove FireworkInit