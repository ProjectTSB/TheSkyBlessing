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
    execute if data storage asset:context Killed.To as @e[type=#lib:living,type=!player,tag=KilledEntity,distance=..150] if score @s MobUUID = $KillTarget Temporary run tag @s add Victim
    scoreboard players reset $KillTarget Temporary
# 神器側に受け渡し
    function #asset:artifact/killed
    execute if data storage asset:context Killed{Type:"vanilla_melee"     } run function #asset:artifact/killed/melee
    execute if data storage asset:context Killed{Type:"vanilla_projectile"} run function #asset:artifact/killed/projectile
    execute if data storage asset:context Killed{Type:"vanilla_explosion" } run function #asset:artifact/killed/explosion
# リセット
    data remove storage asset:context Killed
    tag @e[type=#lib:living,type=!player,tag=Victim] remove Victim
# イベントがまだあれば再帰する
    execute if data storage asset:artifact ArtifactEvents.Killed[0] run function asset_manager:artifact/triggers/killed/foreach
