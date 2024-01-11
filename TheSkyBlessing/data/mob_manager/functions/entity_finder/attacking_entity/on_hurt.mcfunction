#> mob_manager:entity_finder/attacking_entity/on_hurt
#
# 被攻撃対象を特定します
#
# @within advancement mob_manager:entity_finder/check_attacking_entity

# tag付け
    tag @s add TargetEntity
# フィルタ
    execute unless entity @e[type=#lib:living,type=!player,tag=AttackerFromLibrary,distance=..150,limit=1] as @e[type=#lib:living,type=!player,distance=..150] run function mob_manager:entity_finder/attacking_entity/filters/15
    execute as @e[type=#lib:living,type=!player,tag=AttackerFromLibrary,distance=..150] run function mob_manager:entity_finder/attacking_entity/filters/15
# 戦闘中判定スコアをセットする
    execute if entity @e[tag=AttackingEntity,tag=Enemy,distance=..150] run scoreboard players set @s InBattleTick 160
# リセット
    tag @s remove TargetEntity
    advancement revoke @s only mob_manager:entity_finder/check_attacking_entity