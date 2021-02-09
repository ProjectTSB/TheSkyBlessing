#> player_manager:nbt_data/put
#
#
#
# @within function core:tick

# FallDistance
    execute store result score @s FallDistance run data get entity @s FallDistance 100
# OnGround
    tag @s[nbt={OnGround:1b}] add OnGround