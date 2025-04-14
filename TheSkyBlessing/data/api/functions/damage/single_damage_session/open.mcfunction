#> api:damage/single_damage_session/open
#
# シングルダメージセッションを開始します
#
# シングルダメージセッションとは、単一 Entity に対して複数の呼び出しが発生し得ない DamageAPI にて、
# ExtendedCollision を持つ Entity に複数ヒットしてしまう問題に対処するためのセッションです
#
# このセッションが開かれている状態では、ExtendedCollision を持つ Entity に対しては、
# 最初に与えられた攻撃のみがヒットし、以降は全ての攻撃が無視されるようになります
#
# @api

execute if data storage lib: {DamageApiSingleDamageSessionOpened:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:damage/ のセッションが正常に閉じられていません。","color":"white"}]
data modify storage api: DamageApiSingleDamageSessionOpened set value true
