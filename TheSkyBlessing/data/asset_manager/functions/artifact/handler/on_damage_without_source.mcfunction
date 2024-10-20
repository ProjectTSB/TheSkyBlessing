#> asset_manager:artifact/handler/on_damage_without_source
#
#
#
# @within function core:handler/damage

#> Private
# @private
#declare score_holder $Damage

function oh_my_dat:please

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[{IsVanilla:true}] run return 1

# ダメージ種別取得
    execute if entity @s[advancements={core:handler/damage={type-drowning=true}}] run data modify storage asset:artifact DamageType set value "vanilla_drowning"
    execute if entity @s[advancements={core:handler/damage={type-explosion=true}}] run data modify storage asset:artifact DamageType set value "vanilla_explosion"
    execute if entity @s[advancements={core:handler/damage={type-fire=true}}] run data modify storage asset:artifact DamageType set value "vanilla_fire"
    execute if entity @s[advancements={core:handler/damage={type-freezing=true}}] run data modify storage asset:artifact DamageType set value "vanilla_freezing"
    execute if entity @s[advancements={core:handler/damage={type-lightning=true}}] run data modify storage asset:artifact DamageType set value "vanilla_lightning"
    execute if entity @s[advancements={core:handler/damage={type-melee=true}}] run data modify storage asset:artifact DamageType set value "vanilla_melee"
    execute if entity @s[advancements={core:handler/damage={type-projectile=true}}] run data modify storage asset:artifact DamageType set value "vanilla_projectile"
    execute if entity @s[advancements={core:handler/damage={type-other=true}}] run data modify storage asset:artifact DamageType set value "vanilla_other"
# 防御されたかの取得
    execute if entity @s[advancements={core:handler/damage={blocked=true}}] run data modify storage asset:artifact Blocked set value true
    execute if entity @s[advancements={core:handler/damage={blocked=false}}] run data modify storage asset:artifact Blocked set value false

# ダメージ取得
    scoreboard players operation $Damage Temporary = @s TakenDamage
    scoreboard players operation $Damage Temporary *= $10 Const
# ArtifactEvents にデータ追加
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage append value {IsVanilla:true}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].Type set from storage asset:artifact DamageType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].Blocked set from storage asset:artifact Blocked
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].Amount double 0.01 run scoreboard players get $Damage Temporary

# リセット
    data remove storage asset:artifact Blocked
    data remove storage asset:artifact DamageType
    scoreboard players reset @s TakenDamage
    scoreboard players reset $Damage Temporary
