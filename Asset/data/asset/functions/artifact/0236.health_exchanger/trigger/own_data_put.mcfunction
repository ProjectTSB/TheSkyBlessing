#> asset:artifact/0236.health_exchanger/trigger/own_data_put
#
# Healthを自身のTemporaryに代入します
#
# @within function asset:artifact/0236.health_exchanger/trigger/2.check_condition

# 取得&代入
    function api:data_get/health
    execute store result score @s Temporary run data get storage api: Health 100