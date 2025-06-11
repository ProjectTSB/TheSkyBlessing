#> api:data_get/invalidate_cache
#
# 次回の DataGetAPI 使用時に、キャッシュを使用せず再取得するようにフラグを立てます。
#
# これは、インベントリなどに大きな変化が生じた後に実行し、
# キャッシュと実際の状態が不整合を起こさないようにするために利用することが想定されています。
#
# ただし、2025/06/01 現在、実装上の制約で Pos はリセットされません。
#
# @input as player
# @api

function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.IsDirty set value true
