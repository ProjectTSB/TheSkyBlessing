#> mob_manager:entity_finder/player_hurt_entity/fetch_entity
#
# 多分このfunctionの実行者は攻撃したEntityであるはず
#
# @within function mob_manager:entity_finder/player_hurt_entity/filters/0

#> Private
# @private
#declare score_holder $Damage

# 軽量にセレクターを利用する用のtag
    tag @s add DamagedEntity

# ダメージ種別取得
    execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={type-melee=true}}] run data modify storage mob_manager:entity_finder DamageType set value "vanilla_melee"
    execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={type-projectile=true}}] run data modify storage mob_manager:entity_finder DamageType set value "vanilla_projectile"
    execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={type-explosion=true}}] run data modify storage mob_manager:entity_finder DamageType set value "vanilla_explosion"
# ダメージ取得
    execute store result score $Damage Temporary run data get entity @s Health 100
    scoreboard players remove $Damage Temporary 51200
    scoreboard players operation $Damage Temporary *= $-1 Const

# ArtifactEvents にデータ追加
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack append value {IsVanilla:true}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].Type set from storage mob_manager:entity_finder DamageType
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].To int 1 run scoreboard players get @s MobUUID
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].Amount double 0.01 run scoreboard players get $Damage Temporary

# 攻撃された Entity の EntityStorage 取得
    function oh_my_dat:please
# こっちにもイベントデータ追加
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt append value {IsVanilla:true}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].Type set from storage mob_manager:entity_finder DamageType
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].From int 1 run scoreboard players get @p[tag=AttackedPlayer] UserID
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].Amount double 0.01 run scoreboard players get $Damage Temporary

# 体力をもとに戻す
    data modify entity @s Health set value 512f
# リセット
    data remove storage mob_manager:entity_finder DamageType
    scoreboard players reset $Damage Temporary
