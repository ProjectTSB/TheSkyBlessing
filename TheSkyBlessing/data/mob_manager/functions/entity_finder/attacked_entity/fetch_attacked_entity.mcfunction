#> mob_manager:entity_finder/attacked_entity/fetch_attacked_entity
#
# 多分このfunctionの実行者は攻撃したEntityであるはず
#
# @within function mob_manager:entity_finder/attacked_entity/filters/0

#> Private
# @private
#declare score_holder $Damage

# 軽量にセレクターを利用する用のtag
    tag @s add AttackedEntity
# ダメージ取得
    execute store result score $Damage Temporary run data get entity @s Health 100
    scoreboard players remove $Damage Temporary 51200
    scoreboard players operation $Damage Temporary *= $-1 Const
# ArtifactEvents にデータ追加 (Damage は null)
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack append value {}
    execute if entity @p[tag=TargetEntity,advancements={mob_manager:entity_finder/check_attacked_entity={type-melee=true}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].Type set value "vanilla_melee"
    execute if entity @p[tag=TargetEntity,advancements={mob_manager:entity_finder/check_attacked_entity={type-projectile=true}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].Type set value "vanilla_projectile"
    execute if entity @p[tag=TargetEntity,advancements={mob_manager:entity_finder/check_attacked_entity={type-explosion=true}}] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].Type set value "vanilla_explosion"
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].To int 1 run scoreboard players get @s MobUUID
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].Damage double 0.01 run scoreboard players get $Damage Temporary
# リセット
    data modify entity @s Health set value 512f
    scoreboard players reset $Damage Temporary
