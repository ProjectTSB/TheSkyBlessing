#> asset:sacred_treasure/0817.dragons_neck_ball/trigger/2.1.is_fullset
#
# @output
#   score $MP.fullset
#   0:フルセットでない 1:フルセット
# @within function
#   asset:sacred_treasure/0817.dragons_neck_ball/trigger/2.check_condition


# インベントリの情報取得
    function api:data_get/inventory

# かぐや姫装備がフルセットか確認
    scoreboard players set $MP.fullset Temporary 1
    execute unless data storage api: Inventory[{Slot:100b}].tag.TSB{ID:819} run scoreboard players set $MP.fullset Temporary 0
    execute unless data storage api: Inventory[{Slot:101b}].tag.TSB{ID:818} run scoreboard players set $MP.fullset Temporary 0
    execute unless data storage api: Inventory[{Slot:102b}].tag.TSB{ID:816} run scoreboard players set $MP.fullset Temporary 0
    execute unless data storage api: Inventory[{Slot:103b}].tag.TSB{ID:817} run scoreboard players set $MP.fullset Temporary 0
