#> asset_manager:artifact/triggers/using_item/release/
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current
# 持ち替えチェック（持ち替えと同時に離して持ち替えた方が発動...を防ぐため）
    function asset_manager:artifact/triggers/using_item/release/reset_when_change_item
# asset:contextにアイテム使用時間を設定する
    function asset_manager:artifact/triggers/using_item/set_context
# 神器側に受け渡し
    scoreboard players set $UsingItemThreshold Temporary 1
    function asset_manager:artifact/triggers/using_item/reset_threshold_less
    function #asset:artifact/using_item/release/

    execute if score @s UsingItem matches 10.. run scoreboard players set $UsingItemThreshold Temporary 10
    execute if score @s UsingItem matches 10.. run function asset_manager:artifact/triggers/using_item/reset_threshold_less
    execute if score @s UsingItem matches 10.. run function #asset:artifact/using_item/release/0.5s

    execute if score @s UsingItem matches 20.. run scoreboard players set $UsingItemThreshold Temporary 20
    execute if score @s UsingItem matches 20.. run function asset_manager:artifact/triggers/using_item/reset_threshold_less
    execute if score @s UsingItem matches 20.. run function #asset:artifact/using_item/release/1s

    execute if score @s UsingItem matches 40.. run scoreboard players set $UsingItemThreshold Temporary 40
    execute if score @s UsingItem matches 40.. run function asset_manager:artifact/triggers/using_item/reset_threshold_less
    execute if score @s UsingItem matches 40.. run function #asset:artifact/using_item/release/2s

    execute if score @s UsingItem matches 60.. run scoreboard players set $UsingItemThreshold Temporary 60
    execute if score @s UsingItem matches 60.. run function asset_manager:artifact/triggers/using_item/reset_threshold_less
    execute if score @s UsingItem matches 60.. run function #asset:artifact/using_item/release/3s

    execute if score @s UsingItem matches 80.. run scoreboard players set $UsingItemThreshold Temporary 80
    execute if score @s UsingItem matches 80.. run function asset_manager:artifact/triggers/using_item/reset_threshold_less
    execute if score @s UsingItem matches 80.. run function #asset:artifact/using_item/release/4s

    execute if score @s UsingItem matches 100.. run scoreboard players set $UsingItemThreshold Temporary 100
    execute if score @s UsingItem matches 100.. run function asset_manager:artifact/triggers/using_item/reset_threshold_less
    execute if score @s UsingItem matches 100.. run function #asset:artifact/using_item/release/5s

    execute if score @s UsingItem matches 200.. run scoreboard players set $UsingItemThreshold Temporary 200
    execute if score @s UsingItem matches 200.. run function asset_manager:artifact/triggers/using_item/reset_threshold_less
    execute if score @s UsingItem matches 200.. run function #asset:artifact/using_item/release/10s

# リセット
    data remove storage asset:context UsingItemTime
    scoreboard players reset @s UsingItem
    scoreboard players reset @s UsingItem.Mainhand
    scoreboard players reset @s UsingItem.Offhand
