#> asset:mob/0311.blazing_inferno/tick/skill/rush_punch/break_block
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch

#
    execute positioned ^ ^ ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^ ^1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^ ^2 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ^1 ^ ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^1 ^1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^1 ^2 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ^-1 ^ ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^-1 ^1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^-1 ^2 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy