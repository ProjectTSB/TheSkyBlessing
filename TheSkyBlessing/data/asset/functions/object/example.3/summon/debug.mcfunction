#> asset:object/example.3/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @private

# 召喚
    data modify storage api: Argument.ID set value 65532
    function api:object/summon
