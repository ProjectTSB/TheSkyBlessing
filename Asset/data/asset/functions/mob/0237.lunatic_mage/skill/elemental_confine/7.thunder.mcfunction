#> asset:mob/0237.lunatic_mage/skill/elemental_confine/7.thunder
#
# 雷を落とす
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# 一定間隔で実行
    # 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 6L.Tick
    scoreboard players operation $Temp Temporary %= $35 Const

# 0のとき3つ落とす
    execute if score $Temp Temporary matches 0 positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 0 rotated ~90 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 0 rotated ~180 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 0 rotated ~270 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder

# リセット
    scoreboard players reset $Temp Temporary