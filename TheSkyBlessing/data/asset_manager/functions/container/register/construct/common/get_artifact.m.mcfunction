#> asset_manager:container/register/construct/common/get_artifact.m
# @input args
#   IDPath: string
# @within function
#   asset_manager:container/register/construct/set_items/item_normalize/
#   asset_manager:container/register/construct/set_loot_table/replace_artifact

# 初期化
    item replace block 10000 0 10000 container.0 with air
# 神器読み込み
    $data modify storage api: Argument.ID set from storage asset:container $(IDPath)
    function api:artifact/box/from_id
# 設定
    data remove storage asset:container Item
    data modify storage asset:container Item set from block 10000 0 10000 Items[{Slot:0b}]
    data remove storage asset:container Item.Slot
# ところで存在しない場合もありますよね
    execute unless data storage asset:container Item.id run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDの神器は存在しません: "},{"storage":"asset:container","nbt":"Item.PresetItem","color":"red"}]
