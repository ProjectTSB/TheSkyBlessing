#> asset_manager:mob/triggers/summon/put_id_to_map
#
#
#
# @within function asset:mob/extends

# ID をキーにする
    data modify storage api: Argument.Address set from storage asset:context id

# キーからROMを呼び出す
    function api:rom/please

# データを保存する
    data remove storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.Extends
    data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.Extends set from storage asset:mob Extends
