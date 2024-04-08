#> api:data_get/portal_cooldown
#
# 対象のPortalCooldownをstorageに軽量に取得します。
#
# @input as player
# @output storage api: PortalCooldown
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# outputをきれいにする
    data remove storage api: PortalCooldown
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.PortalCooldown.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.PortalCooldown.Data set from entity @s PortalCooldown
# outputのstorageに移す
    data modify storage api: PortalCooldown set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.PortalCooldown.Data
