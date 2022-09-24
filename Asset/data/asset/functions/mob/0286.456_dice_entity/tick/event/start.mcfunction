#> asset:mob/0286.456_dice_entity/tick/event/start
#
#
#
# @within function asset:mob/0286.456_dice_entity/tick/2.tick

# サウンド
    playsound ogg:random.levelup neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.note_block.xylophone neutral @a ~ ~ ~ 1.5 1

#
    execute if entity @s[scores={CU.RandomCount=4}] run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:8,CustomName:'{"text":"  4  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if entity @s[scores={CU.RandomCount=5}] run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:8,CustomName:'{"text":"  5  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if entity @s[scores={CU.RandomCount=6}] run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:8,CustomName:'{"text":"  6  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}

    execute if entity @s[scores={CU.RandomCount=4}] run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:9,CustomName:'{"text":"  4  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if entity @s[scores={CU.RandomCount=5}] run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:9,CustomName:'{"text":"  5  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if entity @s[scores={CU.RandomCount=6}] run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:9,CustomName:'{"text":"  6  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}

    execute if entity @s[scores={CU.RandomCount=4}] run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:10,CustomName:'{"text":"  4  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if entity @s[scores={CU.RandomCount=5}] run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:10,CustomName:'{"text":"  5  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}
    execute if entity @s[scores={CU.RandomCount=6}] run summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Duration:10,CustomName:'{"text":"  6  ","color":"yellow","bold":true,"italic":false,"underlined":true}'}