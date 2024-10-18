#> asset:mob/extends
#
#
#
# @within function asset:mob/*/register

# 継承情報を保存する
    function asset_manager:mob/triggers/summon/put_id_to_map

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context/id/stash

# 再帰時に使うデータをスタックに積む
    data modify storage asset:mob CopiedExtends append from storage asset:mob Extends
    data modify storage asset:mob IsFirstExtend append value {_:{_:true}}
# Extends を削除する
    data remove storage asset:mob Extends

# 継承先を一つ一つ辿っていく
    function asset:mob/extends/foreach

# リセット
    data remove storage asset:mob IsFirstExtend[-1]
    data remove storage asset:mob CopiedExtends[-1]
    data remove storage asset:mob Extends
# 退避させたデータを戻す
    function asset_manager:common/context/id/pop
