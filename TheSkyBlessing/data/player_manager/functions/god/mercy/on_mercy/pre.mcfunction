#> player_manager:god/mercy/on_mercy/pre
#
#
#
# @within function player_manager:god/mercy/

# UserStorage呼び出し
    function oh_my_dat:please
# 失ったアイテムが無いならメッセージ
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] run tellraw @s [{"text":"今は慈悲を乞う必要は無さそうだ...","color":"light_purple"}]
# 失ったアイテムがあればチェック
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] run function player_manager:god/mercy/on_mercy/check
