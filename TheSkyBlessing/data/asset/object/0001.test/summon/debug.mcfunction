#> asset:mob/0001.test/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @within asset:object/0001.test/summon/debug

# 召喚
   data modify storage api: Argument.ID set value 1
   function api:object/summon