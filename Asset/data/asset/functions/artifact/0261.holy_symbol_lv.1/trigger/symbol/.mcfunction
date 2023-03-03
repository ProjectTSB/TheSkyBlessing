#> asset:artifact/0261.holy_symbol_lv.1/trigger/symbol/
#
#
#
# @within function asset:artifact/0261.holy_symbol_lv.1/trigger/recursive

#> temp
# @private
    #declare score_holder $Temp

# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 79.HolySymbol
# 1秒毎にMP回復と魔法陣の表示
    scoreboard players operation $Temp Temporary %= $20 Const
    execute if score $Temp Temporary matches 0 run function asset:artifact/0261.holy_symbol_lv.1/trigger/symbol/vfx
    execute if score $Temp Temporary matches 0 as @a[distance=..4.5,limit=10] run function asset:artifact/0261.holy_symbol_lv.1/trigger/symbol/add_mp
# プレイヤーにエフェクトの付与
    execute as @a[distance=..4.5] unless score @s 79.HolySymbol matches -2147483648..2147483647 run function asset:artifact/0261.holy_symbol_lv.1/trigger/effect/start
# 実行時間のインクリメント
    scoreboard players add @s 79.HolySymbol 1
# 10秒を超えてたらリセット
    execute if score @s 79.HolySymbol matches 200.. run kill @s
# 超えていなければschedule再帰
    execute if score @s 79.HolySymbol matches ..200 run schedule function asset:artifact/0261.holy_symbol_lv.1/trigger/recursive 1t
# リセット
    scoreboard players reset $Temp