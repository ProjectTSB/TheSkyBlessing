#> asset:mob/example.1/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @within asset:object/example.1/summon/debug

# 召喚
   data modify storage api: Argument.ID set value 65534
   function api:object/summon