#> world_manager:gimmick/shard_processor/process/
#
# ガチャの処理
#
# @within function world_manager:gimmick/shard_processor/check_item/

#>
# @private
#declare score_holder $Rotation

# 回す
    execute store result score $Rotation Temporary run data get storage world_manager:gimmick FrameData.ItemRotation
    scoreboard players add $Rotation Temporary 1
    execute store result entity @s ItemRotation byte 1 run scoreboard players get $Rotation Temporary

# VFX
    execute if score $Rotation Temporary matches 1 run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.5 1.5
    execute if score $Rotation Temporary matches 1 run playsound minecraft:block.stone_button.click_on block @a ~ ~ ~ 1.5 2
    execute if score $Rotation Temporary matches 3 run playsound minecraft:block.stone_button.click_on block @a ~ ~ ~ 1.5 2
    execute if score $Rotation Temporary matches 5 run playsound minecraft:block.stone_button.click_on block @a ~ ~ ~ 1.5 2

    execute if score $Rotation Temporary matches 1 run data modify entity @s Item.tag.CustomModelData set value 20122
    execute if score $Rotation Temporary matches 1 run data modify entity @s Item.tag.display.Name set value '{"text":"#","font":"invisible_bg"}'
    execute if score $Rotation Temporary matches 1 positioned ^ ^ ^-0.5 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head with stick{CustomModelData:20115}
    execute if score $Rotation Temporary matches 2 positioned ^ ^ ^-0.5 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head with stick{CustomModelData:20116}
    execute if score $Rotation Temporary matches 3 positioned ^ ^ ^-0.5 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head with stick{CustomModelData:20117}
    execute if score $Rotation Temporary matches 4 positioned ^ ^ ^-0.5 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head with stick{CustomModelData:20118}
    execute if score $Rotation Temporary matches 5 positioned ^ ^ ^-0.5 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head with stick{CustomModelData:20119}
    execute if score $Rotation Temporary matches 6 positioned ^ ^ ^-0.5 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head with stick{CustomModelData:20120}
    execute if score $Rotation Temporary matches 7 positioned ^ ^ ^-0.5 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head with stick{CustomModelData:20121}

# 8で回転されないようにFixedをつける
    execute if score $Rotation Temporary matches 7 run data modify entity @s Fixed set value 1b

# 8以上で壊す
    execute if score $Rotation Temporary matches 8.. run function world_manager:gimmick/shard_processor/process/complete


# リセット
    scoreboard players reset $Rotation Temporary