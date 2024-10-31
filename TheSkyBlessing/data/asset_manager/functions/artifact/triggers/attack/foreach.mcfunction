#> asset_manager:artifact/triggers/attack/foreach
#
#
#
# @within function asset_manager:artifact/triggers/attack/*

# イベントデータ取得
    data modify storage asset:context Attack set from storage asset:artifact ArtifactEvents.Attack[-1]
    data remove storage asset:artifact ArtifactEvents.Attack[-1]
# 攻撃先を取得し、Victim を付与する (null の可能性もある)
    execute if data storage asset:context Attack.To[0] run function asset_manager:artifact/triggers/attack/add_tag_each_victim
# 最大ダメージの計算
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:context Attack.Amounts
    function lib:array/math/max
    data modify storage asset:context Attack.Amount set from storage lib: MaxResult
    function lib:array/session/close
# 神器側に受け渡し
    function #asset:artifact/attack
    execute if data storage asset:context Attack{Type:"vanilla_melee"     } run tag @s add ShouldVanillaAttack
    execute if data storage asset:context Attack{Type:"vanilla_melee"     } run function #asset:artifact/attack/melee
    execute if data storage asset:context Attack{Type:"vanilla_melee"     } if entity @s[tag=ShouldVanillaAttack] as @e[type=#lib:living,type=!player,tag=Victim,distance=..8] at @s run function asset_manager:artifact/triggers/attack/vanilla/
    execute if data storage asset:context Attack{Type:"vanilla_projectile"} run function #asset:artifact/attack/projectile
    execute if data storage asset:context Attack{Type:"vanilla_projectile"} as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] at @s run function asset_manager:artifact/triggers/attack/vanilla/
    execute if data storage asset:context Attack{Type:"vanilla_explosion" } run function #asset:artifact/attack/explosion
# リセット
    data remove storage asset:context Attack
    tag @s remove ShouldVanillaAttack
    tag @e[type=#lib:living,type=!player,tag=Victim] remove Victim
# イベントがまだあれば再帰する
    execute if data storage asset:artifact ArtifactEvents.Attack[0] run function asset_manager:artifact/triggers/attack/foreach
