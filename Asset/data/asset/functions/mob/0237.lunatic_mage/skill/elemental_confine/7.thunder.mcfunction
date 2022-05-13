#> asset:mob/0237.lunatic_mage/skill/elemental_confine/7.thunder
#
# 雷を落とす
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# 一定間隔で実行
    # 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 6L.Tick
    scoreboard players operation $Temp Temporary %= $72 Const

# 4つ落とす
    execute if score $Temp Temporary matches 0 positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 0 rotated ~90 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 0 rotated ~180 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 0 rotated ~270 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder

# 4つ落とす
    execute if score $Temp Temporary matches 36 rotated ~45 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 36 rotated ~135 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 36 rotated ~225 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 36 rotated ~315 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder

# リセット
    scoreboard players reset $Temp Temporary