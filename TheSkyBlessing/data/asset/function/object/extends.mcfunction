#> asset:object/extends
#
# 他のオブジェクトを継承する
#
# @within function asset:object/*/register

# 継承情報を保存する
    function asset_manager:object/summon/put_id_to_map

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context/id/stash

# 再帰時に使うデータをスタックに積む
    data modify storage asset:object CopiedExtends append from storage asset:object Extends
    data modify storage asset:object IsFirstExtend append value {_:{_:true}}
# Extends を削除する
    data remove storage asset:object Extends

# 継承先を一つ一つ辿っていく
    function asset:object/extends/foreach

# リセット
    data remove storage asset:object IsFirstExtend[-1]
    data remove storage asset:object CopiedExtends[-1]
    data remove storage asset:object Extends
# 退避させたデータを戻す
    function asset_manager:common/context/id/pop
