#> api:damage/single_damage_session/close
#
# シングルダメージセッションを終了します
#
# @api

execute if data storage lib: {DamageApiSingleDamageSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:damage/ のセッションが正常に開かれていません。","color":"white"}]

data modify storage api: DamageApiSingleDamageSessionOpened set value false

function api:mob/apply_to_forward_target/reset_initial_apply.m {Key:"api:damage/"}
