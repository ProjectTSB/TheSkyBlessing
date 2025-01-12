#> player_manager:grave/tick/
#
#
#
# @within function core:tick/

#> Private
# @within function player_manager:grave/tick/*
#declare score_holder $UserGraveVersion

#> Temp
# @private
#declare score_holder $UserID

# ユーザーからする処理
    scoreboard players operation $UserID Temporary = @s GraveUserID
    execute as @a if score @s UserID = $UserID Temporary run function player_manager:grave/tick/check_with_user
# 過去の墓なら削除する
    execute if score @s GraveVersion < $UserGraveVersion Temporary run data remove storage player_manager:grave IsGraveNearOwner
    execute if score @s GraveVersion < $UserGraveVersion Temporary run kill @s
# オーナーが近くに居るなら破壊してドロップ
    execute if data storage player_manager:grave {IsGraveNearOwner:true} as @a if score @s UserID = $UserID Temporary run function oh_my_dat:please
    execute if data storage player_manager:grave {IsGraveNearOwner:true} run function player_manager:grave/tick/break
# リセット
    scoreboard players reset $UserGraveVersion Temporary
    scoreboard players reset $UserID Temporary
