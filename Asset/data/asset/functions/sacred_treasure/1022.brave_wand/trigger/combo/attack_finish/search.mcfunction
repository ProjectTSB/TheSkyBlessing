#> asset:sacred_treasure/1022.brave_wand/trigger/combo/attack_finish/search
#
# 波動オーブフィニッシュ: 壁の向こうに判定が出ないようにする処理
#
# @within function
#   asset:sacred_treasure/1022.brave_wand/trigger/combo/main
#   asset:sacred_treasure/1022.brave_wand/trigger/combo/attack_finish/search

# スコア減らす
    scoreboard players remove @s SE.Range 1

# 現在位置がブロックの中なら、壁のちょっと後ろでで爆ぜる
    execute unless block ^ ^ ^ #lib:no_collision positioned ^ ^ ^-2 run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack_finish/spread

# 飛距離のスコアが残ってなかったら発動
    execute if score @s SE.Range matches 0 run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack_finish/spread

# スコアが残ってるぶんだけ再帰する
    execute if score @s SE.Range matches 1.. positioned ^ ^ ^1 run function asset:sacred_treasure/1022.brave_wand/trigger/combo/attack_finish/search