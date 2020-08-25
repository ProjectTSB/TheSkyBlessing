#> core:keep_lost_item/give_all/minecart.summon
#
# チェストトロッコへアイテムを追加する処理
#
# @within function
#   core:keep_lost_item/give_all/give
#   core:keep_lost_item/give_all/minecart.summon

#> Temp
# @within function
#   core:keep_lost_item/give_all/minecart.summon
#   core:keep_lost_item/give_all/packing.minecart
    #declare score_holder $i

# シャルカーに追加する処理
    scoreboard players set $i Temporary 0
    function core:keep_lost_item/give_all/packing.minecart
    scoreboard players reset $i Temporary
# シャルカー -> チェスト
    summon chest_minecart ~ ~ ~ {Invulnerable:1b,Silent:1b,Tags:["LostItemChest","EmptyItems"],Items:[]}
    data modify entity @e[type=chest_minecart,tag=EmptyItems,distance=0,limit=1] Items set from storage core:keep_lost_item/give_all/give MinecartItems
    tag @e[type=chest_minecart,tag=EmptyItems,distance=0,limit=1] remove EmptyItems
    data remove storage core:keep_lost_item/give_all/give MinecartItems
# ループ処理
    execute if data storage core:keep_lost_item/give_all/give Chests[-1] run function core:keep_lost_item/give_all/minecart.summon