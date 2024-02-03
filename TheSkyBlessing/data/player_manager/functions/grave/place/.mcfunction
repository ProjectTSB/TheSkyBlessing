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

# 名前を取得し、TextComponentに加工して適用
    function lib:get_name/
    execute in overworld run loot replace block 10000 0 10000 container.0 loot player_manager:grave/name
    execute in overworld run data modify storage temp: Name set from block 10000 0 10000 Items[0].tag.display.Name

# 墓を取得したストレージと共に召喚
    function player_manager:grave/place/summon with storage temp:

# 演出
    particle minecraft:explosion ~ ~0.5 ~ 0 0 0 0 1 force

# Init処理
    scoreboard players operation @e[type=item_display,tag=GraveInit,sort=nearest,limit=1] GraveID = @s UserID
    tag @e[type=item_display,tag=GraveInit,sort=nearest,limit=1] remove GraveInit