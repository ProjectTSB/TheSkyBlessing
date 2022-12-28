#> core:handler/using_item
#
# アイテムを使用している最中に実行される
#
# @within function core:tick/player/

# score加算
    scoreboard players add @s UsingItem 1
# asset_managerへの引継ぎ
    tag @s add TriggerFlag.UsingItem

# reset
# 達成状況をcore:tick/player/postで使いたいのでそっちに移動
#    advancement revoke @s only core:handler/using_item