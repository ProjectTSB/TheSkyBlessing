#> asset_manager:spawner/subtract_hp/break
#
#
#
# @within function asset_manager:spawner/subtract_hp/subtract

tag @s add BreakSpawner
execute at @s run setblock ~ ~ ~ air
execute at @s run playsound entity.item.break block @a ~ ~ ~ 1 0.5
execute at @s run playsound entity.item.break block @a ~ ~ ~ 1 0.7
execute at @s run playsound entity.zombie.attack_iron_door block @a ~ ~ ~ 0.5 0.8
data modify entity @s Item set value {id:"debug_stick",Count:1b,tag:{CustomModelData:404}}