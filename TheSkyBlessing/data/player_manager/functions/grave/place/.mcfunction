#> player_manager:grave/place/
#
#
#
# @within function core:handler/death

#> ストレージ
#@private
#declare storage temp:

# ストレージに角度を保存
    function api:data_get/rotation

# 向きを別のストレージに移す
    data modify storage temp: Rotation set from storage api: Rotation[0]

# 墓を取得した向きで召喚
    function player_manager:grave/place/summon with storage temp:

# Init処理
    scoreboard players operation @e[type=armor_stand,tag=GraveInit,sort=nearest,limit=1] GraveID = @s UserID
    tag @e[type=armor_stand,tag=GraveInit,sort=nearest,limit=1] remove GraveInit