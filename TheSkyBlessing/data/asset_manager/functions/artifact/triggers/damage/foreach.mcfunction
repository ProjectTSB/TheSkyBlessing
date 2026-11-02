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
    execute if data storage asset:context Damage.From as @e[type=#lib:living_without_player,distance=..150] if score @s MobUUID = $AttackedFrom Temporary run tag @s add Attacker
    scoreboard players reset $AttackedFrom Temporary
# 神器側に受け渡し
    data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage{Type:"vanilla_melee"     } run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/melee"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage{Type:"vanilla_drowning"  } run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/drowning"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage{Type:"vanilla_projectile"} run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/projectile"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage{Type:"vanilla_explosion" } run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/explosion"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage{Type:"vanilla_fire"      } run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/fire"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage{Type:"vanilla_freezing"  } run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/freezing"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage{Type:"vanilla_lightning" } run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/lightning"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage{Type:"vanilla_other"     } run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/other"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage.From run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/from_entity/"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage.From if data storage asset:context Damage{Type:"vanilla_melee"     } run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/from_entity/melee"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage.From if data storage asset:context Damage{Type:"vanilla_projectile"} run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/from_entity/projectile"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Damage.From if data storage asset:context Damage{Type:"vanilla_explosion" } run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"damage/from_entity/explosion"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
# リセット
    data remove storage asset:context Damage
    tag @e[type=#lib:living_without_player,tag=Attacker] remove Attacker
# イベントがまだあれば再帰する
    execute if data storage asset:artifact ArtifactEvents.Damage[0] run function asset_manager:artifact/triggers/damage/foreach
