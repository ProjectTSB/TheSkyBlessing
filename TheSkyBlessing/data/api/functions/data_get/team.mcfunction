#> api:data_get/team
#
# 対象のTeamをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Team
# @public

#>Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Team.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Team.Data set from entity @s Team
# outputのstorageに移す
    data modify storage api: Team set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Team.Data