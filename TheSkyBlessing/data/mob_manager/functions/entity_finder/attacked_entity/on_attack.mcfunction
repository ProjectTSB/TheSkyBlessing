#> mob_manager:entity_finder/attacked_entity/on_attack
#
# 攻撃対象を特定します
#
# @within advancement mob_manager:entity_finder/check_attacked_entity

# tag付け
    tag @s add TargetEntity
# フィルタ
    execute unless entity @e[type=#lib:living,type=!player,tag=VictimFromLibrary,distance=..150,limit=1] as @e[type=#lib:living,type=!player,nbt=!{HurtTime:0s},distance=..150] run function mob_manager:entity_finder/attacked_entity/filters/15
    execute as @e[type=#lib:living,type=!player,tag=VictimFromLibrary,distance=..150] run function mob_manager:entity_finder/attacked_entity/filters/15
# 戦闘中判定スコアをセットする
    execute if entity @e[tag=AttackedEntity,tag=Enemy,distance=..150] run scoreboard players set @s InBattleTick 160
# リセット
    tag @s remove TargetEntity
    advancement revoke @s only mob_manager:entity_finder/check_attacked_entity