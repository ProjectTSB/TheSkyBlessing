#> asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_search
#
# 波動オーブ1: 壁の向こうに判定が出ないようにする処理
#
# @within function
#   asset:sacred_treasure/1022.brave_wand/trigger/3.main
#   asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_search

# スコア減らす
    scoreboard players remove @s SE.Range 1

# 現在位置がブロックの中なら、壁のちょっと後ろでで爆ぜる
    execute unless block ^ ^ ^ #lib:no_collision positioned ^ ^ ^-2 run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_spread

# 飛距離のスコアが残ってなかったら発動
    execute if score @s SE.Range matches 0 run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_spread

# スコアが残ってるぶんだけ再帰する
    execute if score @s SE.Range matches 1.. positioned ^ ^ ^1 run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack1_search