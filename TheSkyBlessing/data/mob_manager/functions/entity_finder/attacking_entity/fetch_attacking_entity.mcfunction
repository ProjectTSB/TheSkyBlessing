#> mob_manager:entity_finder/attacking_entity/fetch_attacking_entity
#
# 多分このfunctionの実行者は攻撃してきたEntityであるはず
#
# @within function mob_manager:entity_finder/attacking_entity/filters/0

#> Private
# @private
#declare score_holder $Damage

# 軽量にセレクターを利用する用のtag
    tag @s add AttackingEntity
# ダメージ種別取得
    execute if entity @p[tag=TargetEntity,advancements={mob_manager:entity_finder/check_attacking_entity={type-melee=true}}] run data modify storage mob_manager:entity_finder DamageType set value "vanilla_melee"
    execute if entity @p[tag=TargetEntity,advancements={mob_manager:entity_finder/check_attacking_entity={type-projectile=true}}] run data modify storage mob_manager:entity_finder DamageType set value "vanilla_projectile"
    execute if entity @p[tag=TargetEntity,advancements={mob_manager:entity_finder/check_attacking_entity={type-explosion=true}}] run data modify storage mob_manager:entity_finder DamageType set value "vanilla_explosion"
# 防御されたかの取得
    execute if entity @p[tag=TargetEntity,advancements={mob_manager:entity_finder/check_attacking_entity={blocked=true}}] run data modify storage mob_manager:entity_finder Blocked set value true
    execute if entity @p[tag=TargetEntity,advancements={mob_manager:entity_finder/check_attacking_entity={blocked=false}}] run data modify storage mob_manager:entity_finder Blocked set value false

# ダメージ取得
    scoreboard players operation $Damage Temporary = @p[tag=TargetEntity] TakenDamage
    scoreboard players operation $Damage Temporary *= $10 Const
# ArtifactEvents にデータ追加
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage append value {IsVanilla:true}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].Type set from storage mob_manager:entity_finder DamageType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].Blocked set from storage mob_manager:entity_finder Blocked
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].From int 1 run scoreboard players get @s MobUUID
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].Damage double 0.01 run scoreboard players get $Damage Temporary

# 攻撃された Entity の EntityStorage 取得
    function oh_my_dat:please
# こっちにもイベントデータ追加
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Attack append value {IsVanilla:true}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Attack[-1].Type set from storage mob_manager:entity_finder DamageType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Attack[-1].Blocked set from storage mob_manager:entity_finder Blocked
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Attack[-1].To int 1 run scoreboard players get @p[tag=TargetEntity] UserID
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Attack[-1].Damage double 0.01 run scoreboard players get $Damage Temporary

# リセット
    data remove storage mob_manager:entity_finder Blocked
    data remove storage mob_manager:entity_finder DamageType
    scoreboard players reset @p[tag=TargetEntity] TakenDamage
    scoreboard players reset $Damage Temporary
