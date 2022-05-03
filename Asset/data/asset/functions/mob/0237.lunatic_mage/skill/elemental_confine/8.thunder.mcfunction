#> asset:mob/0237.lunatic_mage/skill/elemental_confine/8.thunder
#
# 雷を落とす
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# 一定間隔で実行
    # 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 6L.Tick
    scoreboard players operation $Temp Temporary %= $60 Const

# 0のとき3つ落とす
    execute if score $Temp Temporary matches 0 positioned ^ ^ ^2.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 0 rotated ~120 ~ positioned ^ ^ ^2.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 0 rotated ~240 ~ positioned ^ ^ ^2.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder

# 30のときも3つ落とす
    execute if score $Temp Temporary matches 30 rotated ~60 ~ positioned ^ ^ ^2.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 30 rotated ~180 ~ positioned ^ ^ ^2.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score $Temp Temporary matches 30 rotated ~300 ~ positioned ^ ^ ^2.5 run function asset:mob/0237.lunatic_mage/magic_summon/thunder

# リセット
    scoreboard players reset $Temp Temporary