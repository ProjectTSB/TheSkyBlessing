#> asset:sacred_treasure/0265.holy_symbol_lv.5/effect/
#
#
#
# @within function asset:sacred_treasure/0265.holy_symbol_lv.5/recursive

# 実行時間のインクリメント
    scoreboard players add @s 79.HolySymbol 1
# パーティクルの表示
    particle dust 0.5 0.9 1 0.8 ~ ~1 ~ 0.3 0.5 0.3 1 1
# 10秒を超えてたらリセット
    execute if score @s 79.HolySymbol matches 200.. run function asset:sacred_treasure/0265.holy_symbol_lv.5/effect/end
# 超えていなければschedule再帰
    execute if score @s 79.HolySymbol matches ..200 run schedule function asset:sacred_treasure/0265.holy_symbol_lv.5/recursive 1t