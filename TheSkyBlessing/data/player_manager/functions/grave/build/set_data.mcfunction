#> player_manager:grave/build/set_data
#
#
#
# @within function player_manager:grave/build/m

# バージョン設定
    scoreboard players operation @s GraveVersion = @p[tag=this] GraveVersion
# ユーザー ID 設定
    scoreboard players operation @s GraveUserID = @p[tag=this] UserID

# リセット
    tag @s remove GraveInit
