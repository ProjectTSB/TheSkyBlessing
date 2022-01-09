#> player_manager:lost_item/give_all/minecart.summon
#
# チェストトロッコへアイテムを追加する処理
#
# @within function
#   player_manager:lost_item/give_all/
#   player_manager:lost_item/give_all/minecart.summon

#> Private
# @private
    #declare tag EmptyItems

# チェストロッコに追加する処理
    scoreboard players set $i Temporary 0
    function player_manager:lost_item/give_all/packing.minecart
    scoreboard players reset $i Temporary
# シャルカー -> チェスト
    summon chest_minecart ~ ~ ~ {Invulnerable:1b,Silent:1b,Tags:["LostItemChest","EmptyItems"],Items:[]}
    data modify entity @e[type=chest_minecart,tag=EmptyItems,distance=0,limit=1] Items set from storage player_manager:lost_item MinecartItems
    tag @e[type=chest_minecart,tag=EmptyItems,distance=0,limit=1] remove EmptyItems
    data remove storage player_manager:lost_item MinecartItems
# ループ処理
    execute if data storage player_manager:lost_item Chests[-1] run function player_manager:lost_item/give_all/minecart.summon