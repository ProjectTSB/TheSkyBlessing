#> mob_manager:entity_finder/attacked_entity/on_attack
#
# 攻撃対象を特定します
#
# @within advancement mob_manager:entity_finder/check_attacked_entity

# フィルター
    execute if entity @s[tag=!AttackedByApi] run function mob_manager:entity_finder/attacked_entity/filters/
# 戦闘中判定スコアをセットする
    execute if entity @e[tag=AttackedEntity,tag=Enemy,distance=..150] run scoreboard players set @s InBattleTick 160
# リセット
    advancement revoke @s only mob_manager:entity_finder/check_attacked_entity
