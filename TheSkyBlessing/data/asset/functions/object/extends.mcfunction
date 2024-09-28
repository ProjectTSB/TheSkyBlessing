#> asset:object/extends
#
# 他のオブジェクトを継承する
#
# @within function asset:object/*/register

# 継承情報を保存する
    function asset_manager:object/summon/put_id_to_map

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context/id/stash

# 継承先を一つ一つ辿っていく
    function asset:object/extends/foreach

# 退避させたデータを戻す
    function asset_manager:common/context/id/pop
