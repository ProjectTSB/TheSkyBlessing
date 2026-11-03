#> asset_manager:artifact/triggers/killed/foreach
#
#
#
# @within function asset_manager:artifact/triggers/killed/*

#> Private
# @private
#declare score_holder $KillTarget

# イベントデータ取得
    data modify storage asset:context Killed set from storage asset:artifact ArtifactEvents.Killed[-1]
    data remove storage asset:artifact ArtifactEvents.Killed[-1]
# 攻撃先を取得し、Victim を付与する (null の可能性もある)
    execute if data storage asset:context Killed.To store result score $KillTarget Temporary run data get storage asset:context Killed.To
    execute if data storage asset:context Killed.To as @e[type=#lib:living_without_player,distance=..150] if score @s MobUUID = $KillTarget Temporary run tag @s add Victim
    scoreboard players reset $KillTarget Temporary
# 神器側に受け渡し
    data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"killed"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Killed{Type:"vanilla_melee"     } run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"killed/melee"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Killed{Type:"vanilla_projectile"} run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"killed/projectile"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
    execute if data storage asset:context Killed{Type:"vanilla_explosion" } run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"killed/explosion"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
# リセット
    data remove storage asset:context Killed
    tag @e[type=#lib:living_without_player,tag=Victim] remove Victim
# イベントがまだあれば再帰する
    execute if data storage asset:artifact ArtifactEvents.Killed[0] run function asset_manager:artifact/triggers/killed/foreach
