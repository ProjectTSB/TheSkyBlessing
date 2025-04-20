#> player_manager:grave/tick/
#
#
#
# @within function core:tick/

#> Private
# @within function player_manager:grave/tick/*
    #declare score_holder $UserGraveVersion
    #declare tag GraveOwner

#> Temp
# @private
    #declare score_holder $UserID
    #declare tag Target.Grave

# 持ち主に触られた場合、触った持ち主から実行
    scoreboard players operation $UserID Temporary = @s GraveUserID
    execute as @a if score @s UserID = $UserID Temporary run function player_manager:grave/tick/check_with_user
    execute on passengers if entity @s[type=interaction] if data entity @s interaction on target if entity @s[tag=GraveOwner] run data modify storage player_manager:grave IsOwnerTouchGrave set value true
# 持ち主が近くにいると光る
    execute if data storage player_manager:grave {IsGraveNearOwner:true} run data modify entity @s Glowing set value true
    execute unless data storage player_manager:grave {IsGraveNearOwner:true} run data modify entity @s Glowing set value false
    data remove storage player_manager:grave IsGraveNearOwner
# 過去の墓なら削除する
    execute if score @s GraveVersion < $UserGraveVersion Temporary run data remove storage player_manager:grave IsOwnerTouchGrave
    execute if score @s GraveVersion < $UserGraveVersion Temporary run kill @s
# オーナーが触ったら破壊
    execute if data storage player_manager:grave {IsOwnerTouchGrave:true} at @a[tag=GraveOwner,limit=1] run function player_manager:grave/tick/break
# リセット
    scoreboard players reset $UserGraveVersion Temporary
    scoreboard players reset $UserID Temporary
    tag @a[tag=GraveOwner] remove GraveOwner
    execute on passengers if entity @s[type=interaction] run data remove entity @s interaction
