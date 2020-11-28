#> mob_manager:detect_hurt_entity/on_hurt
#
# 攻撃対象を特定します
#
# @within function core:handler/damage

say 痛い！
# タグ付け
    tag @s add This
# 対象を設定してフィルターにかける
    execute as @e[team=!Null,type=!player,type=!armor_stand,distance=..100] run function mob_manager:detect_hurt_entity/filters/15
# リセット
    tag @s remove This
    tag @s remove HasFlag0
    tag @s remove HasFlag1
    tag @s remove HasFlag2
    tag @s remove HasFlag3
    tag @s remove HasFlag4
    tag @s remove HasFlag5
    tag @s remove HasFlag6
    tag @s remove HasFlag7
    tag @s remove HasFlag8
    tag @s remove HasFlag9
    tag @s remove HasFlag10
    tag @s remove HasFlag11
    tag @s remove HasFlag12
    tag @s remove HasFlag13
    tag @s remove HasFlag14
    tag @s remove HasFlag15
    advancement revoke @s only mob_manager:detect_hurt_entity/check_hurt_entity