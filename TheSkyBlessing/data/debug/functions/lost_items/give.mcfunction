#> debug:lost_items/give
#
# 失ったアイテムを取り返します
#
# @private
# @user


# 失ったアイテム取得
    function oh_my_dat:please
# 何も失ってないなら終わり
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] run return run tellraw @a [{"storage":"global","nbt":"Prefix.DEBUG"},{"text":"失ったアイテムがありません。"}]

# lib:array準備
    function lib:array/session/open
# 27スロット分取り出して、
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems
    function lib:array/packing_chest
# lootでアイテムエンティティにして返す。
    data modify block 10000 0 10000 Items set from storage lib: Package
    loot spawn ~ ~1 ~ mine 10000 0 10000 debug_stick

# 返し切れなかった分は一旦戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems set from storage lib: Array
# 後始末
    function lib:array/session/close
# 返し切れなかった分があるなら再帰
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] run function debug:lost_items/give
