#> asset_manager:artifact/triggers/sneak/
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current
# スロット毎のチェック
    function asset_manager:artifact/triggers/sneak/reset_when_change_item
# asset:contextにスニーク時間を設定する
    function asset_manager:artifact/triggers/sneak/set_context
# 神器側に受け渡し
    # keepトリガー類
        data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/keep/"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 10.. run scoreboard players set $SneakThreshold Temporary 10
        execute if score @s Sneak matches 10.. run function asset_manager:artifact/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 10.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/keep/0.5s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 20.. run scoreboard players set $SneakThreshold Temporary 20
        execute if score @s Sneak matches 20.. run function asset_manager:artifact/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 20.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/keep/1s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 40.. run scoreboard players set $SneakThreshold Temporary 40
        execute if score @s Sneak matches 40.. run function asset_manager:artifact/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 40.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/keep/2s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 60.. run scoreboard players set $SneakThreshold Temporary 60
        execute if score @s Sneak matches 60.. run function asset_manager:artifact/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 60.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/keep/3s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 80.. run scoreboard players set $SneakThreshold Temporary 80
        execute if score @s Sneak matches 80.. run function asset_manager:artifact/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 80.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/keep/4s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 100.. run scoreboard players set $SneakThreshold Temporary 100
        execute if score @s Sneak matches 100.. run function asset_manager:artifact/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 100.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/keep/5s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 200.. run scoreboard players set $SneakThreshold Temporary 200
        execute if score @s Sneak matches 200.. run function asset_manager:artifact/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 200.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/keep/10s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

    # 単発トリガー類
        scoreboard players set $SneakThreshold Temporary 1
        function asset_manager:artifact/triggers/sneak/reset_value_not-equal
        data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 10.. run scoreboard players set $SneakThreshold Temporary 10
        execute if score @s Sneak matches 10.. run function asset_manager:artifact/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 10.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/0.5s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 20.. run scoreboard players set $SneakThreshold Temporary 20
        execute if score @s Sneak matches 20.. run function asset_manager:artifact/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 20.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/1s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 40.. run scoreboard players set $SneakThreshold Temporary 40
        execute if score @s Sneak matches 40.. run function asset_manager:artifact/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 40.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/2s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 60.. run scoreboard players set $SneakThreshold Temporary 60
        execute if score @s Sneak matches 60.. run function asset_manager:artifact/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 60.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/3s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 80.. run scoreboard players set $SneakThreshold Temporary 80
        execute if score @s Sneak matches 80.. run function asset_manager:artifact/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 80.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/4s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 100.. run scoreboard players set $SneakThreshold Temporary 100
        execute if score @s Sneak matches 100.. run function asset_manager:artifact/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 100.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/5s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/

        execute if score @s Sneak matches 200.. run scoreboard players set $SneakThreshold Temporary 200
        execute if score @s Sneak matches 200.. run function asset_manager:artifact/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 200.. run data modify storage asset:artifact DispatchQueue append from storage asset:artifact Subscriptions[{Event:"sneak/10s"}]
        execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
# リセット
    data remove storage asset:context SneakTime
