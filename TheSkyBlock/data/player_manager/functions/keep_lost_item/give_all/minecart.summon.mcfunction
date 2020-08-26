#> player_manager:keep_lost_item/give_all/minecart.summon
#
# チェストトロッコへアイテムを追加する処理
#
# @within function
#   player_manager:keep_lost_item/give_all/give
#   player_manager:keep_lost_item/give_all/minecart.summon

#> Temp
# @within function
#   player_manager:keep_lost_item/give_all/minecart.summon
#   player_manager:keep_lost_item/give_all/packing.minecart
    #declare score_holder $i

#> PrivateUsed
# @private
    #declare tag LostItemChest
    #declare tag EmptyItems

# シャルカーに追加する処理
    scoreboard players set $i Temporary 0
    function player_manager:keep_lost_item/give_all/packing.minecart
    scoreboard players reset $i Temporary
# シャルカー -> チェスト
    summon chest_minecart ~ ~ ~ {Invulnerable:1b,Silent:1b,Tags:["LostItemChest","EmptyItems"],Items:[]}
    data modify entity @e[type=chest_minecart,tag=EmptyItems,distance=0,limit=1] Items set from storage player_manager:keep_lost_item/give_all/give MinecartItems
    tag @e[type=chest_minecart,tag=EmptyItems,distance=0,limit=1] remove EmptyItems
    data remove storage player_manager:keep_lost_item/give_all/give MinecartItems
# ループ処理
    execute if data storage player_manager:keep_lost_item/give_all/give Chests[-1] run function player_manager:keep_lost_item/give_all/minecart.summon