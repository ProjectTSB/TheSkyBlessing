#> mob_manager:entity_finder/attacked_entity/on_attack
#
# 攻撃対象を特定します
#
# @within function core:handler/attack

# タグ付け
    tag @s add this
# 対象を設定してフィルターにかける
    execute as @e[type=#lib:living,nbt={HurtTime:10s},distance=..150] run function mob_manager:entity_finder/attacked_entity/filters/15
# リセット
    tag @s remove this
    tag @s remove HasFindAttackedFlag0
    tag @s remove HasFindAttackedFlag1
    tag @s remove HasFindAttackedFlag2
    tag @s remove HasFindAttackedFlag3
    tag @s remove HasFindAttackedFlag4
    tag @s remove HasFindAttackedFlag5
    tag @s remove HasFindAttackedFlag6
    tag @s remove HasFindAttackedFlag7
    tag @s remove HasFindAttackedFlag8
    tag @s remove HasFindAttackedFlag9
    tag @s remove HasFindAttackedFlag10
    tag @s remove HasFindAttackedFlag11
    tag @s remove HasFindAttackedFlag12
    tag @s remove HasFindAttackedFlag13
    tag @s remove HasFindAttackedFlag14
    tag @s remove HasFindAttackedFlag15