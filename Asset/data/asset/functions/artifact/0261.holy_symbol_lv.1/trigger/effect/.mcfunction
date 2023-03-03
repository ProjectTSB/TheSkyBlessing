#> asset:artifact/0261.holy_symbol_lv.1/trigger/effect/
#
#
#
# @within function asset:artifact/0261.holy_symbol_lv.1/trigger/recursive

# 実行時間のインクリメント
    scoreboard players add @s 79.HolySymbol 1
# パーティクルの表示
    particle dust 0.5 0.9 1 0.8 ~ ~1 ~ 0.3 0.5 0.3 1 1
# 10秒を超えてたらリセット
    execute if score @s 79.HolySymbol matches 200.. run function asset:artifact/0261.holy_symbol_lv.1/trigger/effect/end
# 超えていなければschedule再帰
    execute if score @s 79.HolySymbol matches ..200 run schedule function asset:artifact/0261.holy_symbol_lv.1/trigger/recursive 1t