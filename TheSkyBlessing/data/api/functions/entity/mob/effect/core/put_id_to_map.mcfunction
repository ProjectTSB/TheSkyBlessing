#> api:entity/mob/effect/core/put_id_to_map
#
#
#
# @within function api:entity/mob/effect/core/*

# ID:1, Extends: [2, 3, 4] => 1 -> 2, 2 -> 3, 3 -> 4

# Extends に1要素しかなければ ID をキーにする
    execute unless data storage asset:effect Extends[1] run data modify storage api: Argument.Address set from storage asset:effect ID
# Extends に2要素あれば Extends の最後から2番目の要素をキーにする
    execute if data storage asset:effect Extends[1] run data modify storage api: Argument.Address set from storage asset:effect Extends[-2]

# キーからROMを呼び出す
    function api:rom/please

# データを保存する
    data modify storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Effect.Extends set from storage asset:effect Extends[-1]

# 末尾の要素を削除する
    data remove storage asset:effect Extends[-1]

# まだExtendsが残っていれば再帰する
    execute if data storage asset:effect Extends[0] run function api:entity/mob/effect/core/put_id_to_map
