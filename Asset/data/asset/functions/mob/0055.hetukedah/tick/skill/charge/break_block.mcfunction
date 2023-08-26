#> asset:mob/0055.hetukedah/tick/skill/charge/break_block
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/charge/move_forward

#
    execute positioned ^ ^ ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^ ^1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ^1 ^ ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^1 ^1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ^-1 ^ ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ^-1 ^1 ^ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
