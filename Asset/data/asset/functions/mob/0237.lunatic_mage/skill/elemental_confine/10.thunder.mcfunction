#> asset:mob/0237.lunatic_mage/skill/elemental_confine/10.thunder
#
# 雷を一定間隔で落とす処理
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# 一定間隔で実行
    # 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 6L.Tick
    scoreboard players operation $Interval Temporary %= $80 Const

# 4つ落とす
    execute if score $Interval Temporary matches 0 run function asset:mob/0237.lunatic_mage/skill/elemental_confine/11.thunder2

# 4つ落とす
    execute if score $Interval Temporary matches 40 rotated ~45 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_confine/11.thunder2

# リセット
    scoreboard players reset $Interval Temporary