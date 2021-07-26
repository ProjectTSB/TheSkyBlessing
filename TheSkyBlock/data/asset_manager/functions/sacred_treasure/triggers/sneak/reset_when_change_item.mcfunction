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
    execute if entity @s[tag=ChangeMainhand] run scoreboard players set @s Sneak.Mainhand 1
# offhand
    execute if entity @s[tag=ChangeOffhand] run scoreboard players set @s Sneak.Offhand 1
# head
    execute if entity @s[tag=ChangeHead] run scoreboard players set @s Sneak.Head 1
# chest
    execute if entity @s[tag=ChangeChest] run scoreboard players set @s Sneak.Chest 1
# legs
    execute if entity @s[tag=ChangeLegs] run scoreboard players set @s Sneak.Legs 1
# feet
    execute if entity @s[tag=ChangeFeet] run scoreboard players set @s Sneak.Feet 1