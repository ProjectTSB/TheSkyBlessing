#> asset:mob/0237.lunatic_mage/skill/summon/2.vfx_interval
#
# 一定間隔でvfxを出す処理
#
# @within function asset:mob/0237.lunatic_mage/skill/summon/1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 6L.Tick
# 3tickごとに魔法陣を表示
    scoreboard players operation $Interval Temporary %= $6 Const
    execute if score $Interval Temporary matches 0 rotated 0 0 at @e[type=marker,tag=6L.SummonPoint,distance=..30,limit=3] run function asset:mob/0237.lunatic_mage/skill/summon/vfx

# リセット
    scoreboard players reset $Interval Temporary