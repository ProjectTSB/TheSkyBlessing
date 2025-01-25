#> lib:score_to_health_wrapper/core/store_attack_info/
#
#
#
# @within function lib:score_to_health_wrapper/fluctuation

#> ThisTag
# @private
    #declare score_holder $LatestAttacker

# 攻撃者名を記録する
    function oh_my_dat:please
    execute store result score $LatestAttacker Temporary run data get storage api: Argument.Attacker
    execute if data storage api: Argument{AttackerType:"non-player"} at @s as @e[type=!player,distance=..150] if score @s MobUUID = $LatestAttacker Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.Name set from entity @s CustomName
    execute if data storage api: Argument{AttackerType:    "player"} at @s as @e[type= player,distance=..150] if score @s UserID = $LatestAttacker Temporary run function lib:get_name/
    execute if data storage api: Argument{AttackerType:    "player"} at @s as @e[type= player,distance=..150] if score @s UserID = $LatestAttacker Temporary run function lib:score_to_health_wrapper/core/store_attack_info/player.m with storage lib: Return
# 攻撃属性をEnumとして保存する
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.Type set value 0
    execute if data storage api: Argument{ElementType:"Fire"} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.Type set value 1
    execute if data storage api: Argument{ElementType:"Water"} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.Type set value 2
    execute if data storage api: Argument{ElementType:"Thunder"} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.Type set value 3
    execute if data storage api: Argument{ElementType:"None"} if data storage api: Argument{AttackType:"Physical"} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.Type set value 4
    execute if data storage api: Argument{ElementType:"None"} if data storage api: Argument{AttackType:"Magic"} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.Type set value 5
# 死亡メッセージが設定されていたら保存する
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.DeathMessage
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.DeathMessage set from storage api: Argument.DeathMessage
# リセット
    scoreboard players reset $LatestAttacker Temporary
