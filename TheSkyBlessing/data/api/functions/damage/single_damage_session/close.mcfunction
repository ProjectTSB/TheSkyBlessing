#> api:damage/single_damage_session/close
#
# シングルダメージセッションを終了します
#
# @api

execute if data storage api: {DamageApiSingleDamageSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:damage/ のセッションが正常に開かれていません。","color":"white"}]

data remove storage api: DamageApiSingleDamageSessionOpened

function api:damage/core/reset_duplicate_hit
