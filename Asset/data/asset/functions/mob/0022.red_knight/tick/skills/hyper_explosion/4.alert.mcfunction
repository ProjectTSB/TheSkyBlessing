#> asset:mob/0022.red_knight/tick/skills/hyper_explosion/4.alert
#
# 範囲内に入ってる場合の警告音 BEEP BEEP
#
# @within function asset:mob/0022.red_knight/tick/skills/hyper_explosion/1.tick

#> インターバル
# @private
#declare score_holder $Interval

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s M.Tick

# 数Tickおきに、範囲内のやつに対して警告音を鳴らす。発動が近づくとテンポあがる
    execute if score @s M.Tick matches 20..39 run scoreboard players operation $Interval Temporary %= $4 Const
    execute if score @s M.Tick matches 40..79 run scoreboard players operation $Interval Temporary %= $3 Const
    execute if score @s M.Tick matches 80..100 run scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 at @a[distance=..16] run playsound minecraft:block.note_block.pling neutral @p ~ ~ ~ 0.8 2