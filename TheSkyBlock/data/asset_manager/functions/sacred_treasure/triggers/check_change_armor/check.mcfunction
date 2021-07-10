#> asset_manager:sacred_treasure/triggers/check_change_armor/check
#
# 各slotについて前のアイテムデータと一致していない場合、タグを付与します。
#
# @within function asset_manager:sacred_treasure/triggers/

#> private use
# @private
    #declare score_holder $Temp

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/core/data/pre_event_put/new

# mainhand
    execute store result score $Temp Temporary run data get storage asset:context Items.mainhand.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Mainhand = $Temp Temporary run tag @s add ChangeMainhand
    scoreboard players operation @s UUID.Mainhand = $Temp Temporary
# offhand
    execute store result score $Temp Temporary run data get storage asset:context Items.offhand.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Offhand = $Temp Temporary run tag @s add ChangeOffhand
    scoreboard players operation @s UUID.Offhand = $Temp Temporary
# head
    execute store result score $Temp Temporary run data get storage asset:context Items.head.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Head = $Temp Temporary run tag @s add ChangeHead
    scoreboard players operation @s UUID.Head = $Temp Temporary
# chest
    execute store result score $Temp Temporary run data get storage asset:context Items.chest.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Chest = $Temp Temporary run tag @s add ChangeChest
    scoreboard players operation @s UUID.Chest = $Temp Temporary
# legs
    execute store result score $Temp Temporary run data get storage asset:context Items.legs.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Legs = $Temp Temporary run tag @s add ChangeLegs
    scoreboard players operation @s UUID.Legs = $Temp Temporary
# feet
    execute store result score $Temp Temporary run data get storage asset:context Items.feet.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Feet = $Temp Temporary run tag @s add ChangeFeet
    scoreboard players operation @s UUID.Feet = $Temp Temporary

# リセット
    scoreboard players reset $Temp Temporary