#> debug:artifact/tell_id/
#
# 利き手に持っている神器のIDを表示します。
# 「コレ何番？」
#
# @private
# @user


# 実行者が居ない場合エラー
    execute unless entity @s[type=player] run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text": "実行者を指定してください。"}]

# 取得
    function api:data_get/selected_item

# 表示
    execute if data storage api: SelectedItem.tag.TSB.ID run tellraw @s [{"storage":"global","nbt":"Prefix.DEBUG"},{"text":"神器ID: "},{"storage":"api:","nbt":"SelectedItem.tag.TSB.ID"}]

# 神器を持っていない場合
    execute unless data storage api: SelectedItem.tag.TSB.ID run tellraw @s [{"storage":"global","nbt":"Prefix.FAILED"},{"text": "神器を手に持っていません。"}]
