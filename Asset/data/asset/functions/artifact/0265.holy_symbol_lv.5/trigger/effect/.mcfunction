#> asset:artifact/0265.holy_symbol_lv.5/trigger/effect/
#
#
#
# @within function asset:artifact/0265.holy_symbol_lv.5/trigger/recursive

# 実行時間のインクリメント
    scoreboard players add @s 7D.HolySymbol 1
# パーティクルの表示
    particle dust 0.5 0.9 1 0.8 ~ ~1 ~ 0.3 0.5 0.3 1 1
# 16秒を超えてたらリセット
    execute if score @s 7D.HolySymbol matches 320.. run function asset:artifact/0265.holy_symbol_lv.5/trigger/effect/end
# 超えていなければschedule再帰
    execute if score @s 7D.HolySymbol matches ..320 run schedule function asset:artifact/0265.holy_symbol_lv.5/trigger/recursive 1t