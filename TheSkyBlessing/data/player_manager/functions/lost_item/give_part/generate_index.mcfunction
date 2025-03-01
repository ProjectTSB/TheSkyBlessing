#> player_manager:lost_item/give_part/generate_index
#
# 返却するアイテム配列の添字をランダムに一つ生成する
#
# @within function
#   player_manager:lost_item/give_part/
#   player_manager:lost_item/give_part/generate_index

# 乱数生成
    execute store result score $Index Temporary run random value 0..65535
# 配列範囲に剰余算
    scoreboard players operation $Index Temporary %= $ListLength Temporary
# 添字配列に追加
    data modify storage lib: Picks append value -1
    execute store result storage lib: Picks[-1] int 1 run scoreboard players get $Index Temporary
# GiveCountを減らす
    scoreboard players remove $GiveCount Temporary 1
# GiveCountが残ってるなら繰り返す
    execute if score $GiveCount Temporary matches 1.. run function player_manager:lost_item/give_part/generate_index
