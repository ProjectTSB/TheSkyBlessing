#> asset_manager:artifact/triggers/damage/foreach
#
#
#
# @within function asset_manager:artifact/triggers/damage/*

#> Private
# @private
#declare score_holder $AttackedFrom

# イベントデータ取得
    data modify storage asset:context Damage set from storage asset:artifact ArtifactEvents.Damage[-1]
    data remove storage asset:artifact ArtifactEvents.Damage[-1]
# 攻撃元を取得し、Attacker を付与する (null の可能性もある)
    execute if data storage asset:context Damage.From store result score $AttackedFrom Temporary run data get storage asset:context Damage.From
    execute if data storage asset:context Damage.From as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s MobUUID = $AttackedFrom Temporary run tag @s add Attacker
    scoreboard players reset $AttackedFrom Temporary
# 神器側に受け渡し
    function #asset:artifact/attack
    execute if data storage asset:context Damage{Type:"vanilla_melee"     } run function #asset:artifact/damage/melee
    execute if data storage asset:context Damage{Type:"vanilla_drowning"  } run function #asset:artifact/damage/drowning
    execute if data storage asset:context Damage{Type:"vanilla_projectile"} run function #asset:artifact/damage/projectile
    execute if data storage asset:context Damage{Type:"vanilla_explosion" } run function #asset:artifact/damage/explosion
    execute if data storage asset:context Damage{Type:"vanilla_fire"      } run function #asset:artifact/damage/fire
    execute if data storage asset:context Damage{Type:"vanilla_freezing"  } run function #asset:artifact/damage/freezing
    execute if data storage asset:context Damage{Type:"vanilla_lightning" } run function #asset:artifact/damage/lightning
    execute if data storage asset:context Damage{Type:"vanilla_other"     } run function #asset:artifact/damage/other
    execute if data storage asset:context Damage.From run function #asset:artifact/damage/from_entity/
    execute if data storage asset:context Damage.From if data storage asset:context Damage{Type:"vanilla_melee"     } run function #asset:artifact/damage/from_entity/melee
    execute if data storage asset:context Damage.From if data storage asset:context Damage{Type:"vanilla_projectile"} run function #asset:artifact/damage/from_entity/projectile
    execute if data storage asset:context Damage.From if data storage asset:context Damage{Type:"vanilla_explosion" } run function #asset:artifact/damage/from_entity/explosion
# リセット
    data remove storage asset:context Damage
    tag @e[type=#lib:living,type=!player,tag=Attacker] remove Attacker
# イベントがまだあれば再帰する
    execute if data storage asset:artifact ArtifactEvents.Damage[0] run function asset_manager:artifact/triggers/damage/foreach
