#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/break_block
#
# 壁を壊す
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/explosion

#
    execute positioned ^ ^ ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^1 ^ ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^-1 ^ ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ^ ^1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^1 ^1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^-1 ^1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ^ ^-1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^1 ^-1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^-1 ^-1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy