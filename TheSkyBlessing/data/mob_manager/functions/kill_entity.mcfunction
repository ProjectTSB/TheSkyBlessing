#> mob_manager:kill_entity
#
#
#
# @within function asset_manager:mob/triggers/

effect clear @s resistance
attribute @s generic.armor modifier add 3-0-0-0-1 "kill modifier" -1 multiply
attribute @s generic.armor_toughness modifier add 3-0-0-0-1 "kill modifier" -1 multiply
damage @s 9999 generic_kill
