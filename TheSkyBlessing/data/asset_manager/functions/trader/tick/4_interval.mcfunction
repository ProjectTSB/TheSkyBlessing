#> asset_manager:trader/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# 登録処理
    execute if data storage global {IsProduction:1b} if score $LoadTime Global matches 160.. run function #asset:trader/register