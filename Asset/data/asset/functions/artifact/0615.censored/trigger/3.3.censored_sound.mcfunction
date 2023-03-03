#> asset:artifact/0615.censored/trigger/3.3.censored_sound
#
# ピー音を鳴らす処理
#
# @within function asset:artifact/0615.censored/trigger/**

# くっっっっっそやかましい音
    execute as @e[type=area_effect_cloud,tag=H3.CensoredSound] at @s run playsound minecraft:block.note_block.flute player @a[distance=..10] ~ ~ ~ 1 1.95
    execute as @e[type=area_effect_cloud,tag=H3.CensoredSound] at @s run playsound minecraft:block.note_block.flute player @a[distance=..10] ~ ~ ~ 1 1.9

# 音をぶち切る
    execute as @a at @s unless entity @e[type=area_effect_cloud,tag=H3.CensoredSound,distance=..10] run stopsound @s player minecraft:block.note_block.flute

# 再帰
    execute if entity @e[type=area_effect_cloud,tag=H3.CensoredSound,limit=1] run schedule function asset:artifact/0615.censored/trigger/3.3.censored_sound 1t