#> asset_manager:object/summon/put_id_to_map
#
#
#
# @within function asset:object/extends

# ID をキーにする
    data modify storage api: Argument.Address set from storage asset:object ID

# キーからROMを呼び出す
    function api:rom/please

# データを保存する
    data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.Extends set from storage asset:object Extends
