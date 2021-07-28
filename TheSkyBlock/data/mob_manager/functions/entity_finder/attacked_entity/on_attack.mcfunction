#> mob_manager:entity_finder/attacked_entity/on_attack
#
# 攻撃対象を特定します
#
# @within advancement mob_manager:entity_finder/check_attacked_entity

# tag付け
    tag @s add this
# フィルタ
    execute as @e[type=#lib:living,type=!player,nbt=!{HurtTime:0s},distance=..150] run function mob_manager:entity_finder/attacked_entity/filters/15
    execute as @e[type=#lib:living,type=!player,tag=LibraryDamage,distance=..150] run function mob_manager:entity_finder/attacked_entity/filters/15
# リセット
    tag @s remove LibraryDamage
    advancement revoke @s only mob_manager:entity_finder/check_attacked_entity