#> asset_manager:sacred_treasure/triggers/sneak/reset_when_change_item
#
# 各slotについて前のアイテムデータと一致していない場合、その値のスコアボードを1に設定します
#
# Q. なんで0やnullじゃなくて1なの？ A. このfunctionが実行されるのはSneak時なので0|null+1の値 = 1になる
#
# @within function asset_manager:sacred_treasure/triggers/sneak/

#> private use
# @private
    #declare score_holder $Temp

# mainhand
    execute store result score $Temp Temporary run data get storage asset:context Items.mainhand.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Mainhand = $Temp Temporary run scoreboard players set @s Sneak.Mainhand 1
    scoreboard players operation @s UUID.Mainhand = $Temp Temporary
# offhand
    execute store result score $Temp Temporary run data get storage asset:context Items.offhand.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Offhand = $Temp Temporary run scoreboard players set @s Sneak.Offhand 1
    scoreboard players operation @s UUID.Offhand = $Temp Temporary
# head
    execute store result score $Temp Temporary run data get storage asset:context Items.head.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Head = $Temp Temporary run scoreboard players set @s Sneak.Head 1
    scoreboard players operation @s UUID.Head = $Temp Temporary
# chest
    execute store result score $Temp Temporary run data get storage asset:context Items.chest.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Chest = $Temp Temporary run scoreboard players set @s Sneak.Chest 1
    scoreboard players operation @s UUID.Chest = $Temp Temporary
# legs
    execute store result score $Temp Temporary run data get storage asset:context Items.legs.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Legs = $Temp Temporary run scoreboard players set @s Sneak.Legs 1
    scoreboard players operation @s UUID.Legs = $Temp Temporary
# feet
    execute store result score $Temp Temporary run data get storage asset:context Items.feet.tag.TSB.UUID
    execute unless score $Temp Temporary matches -2147483648..2147483647 run scoreboard players set $Temp Temporary -1
    execute unless score @s UUID.Feet = $Temp Temporary run scoreboard players set @s Sneak.Feet 1
    scoreboard players operation @s UUID.Feet = $Temp Temporary

# リセット
    scoreboard players reset $Temp Temporary