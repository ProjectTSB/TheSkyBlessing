#> world_manager:area/10.nether/break_elytra
#
#
#
# @within function world_manager:area/10.nether/on_tick

item modify entity @s armor.chest lib:break_item
playsound entity.item.break player @a
tellraw @s [{"text":"[!] 未知の力によってエリトラが破壊された。","color":"red"}]
