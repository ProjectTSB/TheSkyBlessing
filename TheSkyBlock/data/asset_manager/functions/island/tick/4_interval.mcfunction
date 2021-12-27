#> asset_manager:island/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# 登録処理
    execute if data storage global {IsProduction:1b} if score $LoadTime Global matches 160.. run function #asset:island/register
# パーティクル
    execute as @e[type=armor_stand,tag=CursedTreasure] at @s run function asset_manager:island/tick/vfx