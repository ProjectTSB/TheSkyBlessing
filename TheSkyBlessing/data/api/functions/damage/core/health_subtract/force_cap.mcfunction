#> api:damage/core/health_subtract/force_cap
#
# システム的なダメージ上限(99999.9(e2))チェック
#
# @within function api:damage/core/health_subtract/*player/

execute if score $Damage Temporary matches 9999990.. run scoreboard players set $Damage Temporary 9999990
