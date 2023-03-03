#> asset:artifact/0269.holy_symbol_lv.10/trigger/effect/
#
#
#
# @within function asset:artifact/0269.holy_symbol_lv.10/trigger/recursive

# 実行時間のインクリメント
    scoreboard players add @s 7H.HolySymbol 1
# パーティクルの表示
    particle dust 0.5 0.9 1 0.8 ~ ~1 ~ 0.3 0.5 0.3 1 1
# 22秒を超えてたらリセット
    execute if score @s 7H.HolySymbol matches 440.. run function asset:artifact/0269.holy_symbol_lv.10/trigger/effect/end
# 超えていなければschedule再帰
    execute if score @s 7H.HolySymbol matches ..440 run schedule function asset:artifact/0269.holy_symbol_lv.10/trigger/recursive 1t