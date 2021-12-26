#> asset_manager:island/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# 登録処理 //TODO リリース時に下記のコメントを外す
    # function #asset:island/register
# パーティクル
    execute as @e[type=armor_stand,tag=CursedTreasure] at @s run function asset_manager:island/tick/vfx