#> api:damage/core/trigger_on_attack
#
# attackトリガー用の進捗を手動でトリガーします
#
# @within function api:damage/core/health_subtract/non-player

#> Declare
# @private
    #declare tag TargetAttacker

# プレイヤー特定
    execute as @a if score @s UserID = $LatestModifiedUser UserID run tag @s add TargetAttacker
# 特定用タグ
    tag @s add VictimFromLibrary
# トリガー
    tag @a[tag=TargetAttacker] add TriggerFlag.Attack
    execute if entity @s[tag=FindFlag0.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 0-0
    execute if entity @s[tag=FindFlag0.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 0-1
    execute if entity @s[tag=FindFlag1.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 1-0
    execute if entity @s[tag=FindFlag1.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 1-1
    execute if entity @s[tag=FindFlag2.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 2-0
    execute if entity @s[tag=FindFlag2.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 2-1
    execute if entity @s[tag=FindFlag3.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 3-0
    execute if entity @s[tag=FindFlag3.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 3-1
    execute if entity @s[tag=FindFlag4.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 4-0
    execute if entity @s[tag=FindFlag4.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 4-1
    execute if entity @s[tag=FindFlag5.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 5-0
    execute if entity @s[tag=FindFlag5.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 5-1
    execute if entity @s[tag=FindFlag6.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 6-0
    execute if entity @s[tag=FindFlag6.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 6-1
    execute if entity @s[tag=FindFlag7.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 7-0
    execute if entity @s[tag=FindFlag7.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 7-1
    execute if entity @s[tag=FindFlag8.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 8-0
    execute if entity @s[tag=FindFlag8.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 8-1
    execute if entity @s[tag=FindFlag9.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 9-0
    execute if entity @s[tag=FindFlag9.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 9-1
    execute if entity @s[tag=FindFlag10.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 10-0
    execute if entity @s[tag=FindFlag10.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 10-1
    execute if entity @s[tag=FindFlag11.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 11-0
    execute if entity @s[tag=FindFlag11.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 11-1
    execute if entity @s[tag=FindFlag12.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 12-0
    execute if entity @s[tag=FindFlag12.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 12-1
    execute if entity @s[tag=FindFlag13.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 13-0
    execute if entity @s[tag=FindFlag13.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 13-1
    execute if entity @s[tag=FindFlag14.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 14-0
    execute if entity @s[tag=FindFlag14.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 14-1
    execute if entity @s[tag=FindFlag15.0] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 15-0
    execute if entity @s[tag=FindFlag15.1] run advancement grant @a[tag=TargetAttacker] only mob_manager:entity_finder/check_attacked_entity 15-1
# リセット
    tag @a[tag=TargetAttacker] remove TargetAttacker
    tag @s remove VictimFromLibrary