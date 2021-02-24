#> mob_manager:entity_finder/attacking_entity/on_hurt
#
# 攻撃対象を特定します
#
# @within function core:handler/damage

# タグ付け
    tag @s add this
# 対象を設定してフィルターにかける
    execute as @e[type=#lib:living,type=!player,distance=..150] run function mob_manager:entity_finder/attacking_entity/filters/15
# リセット
    tag @s remove this
    tag @s remove HasFindAttackingFlag0
    tag @s remove HasFindAttackingFlag1
    tag @s remove HasFindAttackingFlag2
    tag @s remove HasFindAttackingFlag3
    tag @s remove HasFindAttackingFlag4
    tag @s remove HasFindAttackingFlag5
    tag @s remove HasFindAttackingFlag6
    tag @s remove HasFindAttackingFlag7
    tag @s remove HasFindAttackingFlag8
    tag @s remove HasFindAttackingFlag9
    tag @s remove HasFindAttackingFlag10
    tag @s remove HasFindAttackingFlag11
    tag @s remove HasFindAttackingFlag12
    tag @s remove HasFindAttackingFlag13
    tag @s remove HasFindAttackingFlag14
    tag @s remove HasFindAttackingFlag15
    advancement revoke @s only mob_manager:entity_finder/attacking_entity/check_hurt_entity