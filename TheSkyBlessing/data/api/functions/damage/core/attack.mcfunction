#> api:damage/core/attack
#
# ダメージ与えるよ
#
# @within function api:damage/

# 計算に必要な値を取得
    function api:damage/core/get_status/
# 与えるダメージの計算
    function api:damage/core/calc/
# Mobに適用
    function api:damage/core/health_subtract/
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $Damage Temporary

# MP 回復
    execute if data storage api: Argument.AdditionalMPHeal if entity @s[type=!player] as @a if score @s UserID = $LatestModifiedUser UserID run function api:damage/core/mp_heal
