#> asset_manager:sacred_treasure/triggers/sneak/
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/data/new/set_to_current
# スロット毎のチェック
    function asset_manager:sacred_treasure/triggers/sneak/reset_when_change_item
# asset:contextにスニーク時間を設定する
    function asset_manager:sacred_treasure/triggers/sneak/set_context
# 神器側に受け渡し
    # keepトリガー類
        function #asset:sacred_treasure/sneak/keep/

        execute if score @s Sneak matches 20.. run scoreboard players set $SneakThreshold Temporary 20
        execute if score @s Sneak matches 20.. run function asset_manager:sacred_treasure/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 20.. run function #asset:sacred_treasure/sneak/keep/1s

        execute if score @s Sneak matches 40.. run scoreboard players set $SneakThreshold Temporary 40
        execute if score @s Sneak matches 40.. run function asset_manager:sacred_treasure/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 40.. run function #asset:sacred_treasure/sneak/keep/2s

        execute if score @s Sneak matches 60.. run scoreboard players set $SneakThreshold Temporary 60
        execute if score @s Sneak matches 60.. run function asset_manager:sacred_treasure/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 60.. run function #asset:sacred_treasure/sneak/keep/3s

        execute if score @s Sneak matches 80.. run scoreboard players set $SneakThreshold Temporary 80
        execute if score @s Sneak matches 80.. run function asset_manager:sacred_treasure/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 80.. run function #asset:sacred_treasure/sneak/keep/4s

        execute if score @s Sneak matches 100.. run scoreboard players set $SneakThreshold Temporary 100
        execute if score @s Sneak matches 100.. run function asset_manager:sacred_treasure/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 100.. run function #asset:sacred_treasure/sneak/keep/5s

        execute if score @s Sneak matches 200.. run scoreboard players set $SneakThreshold Temporary 200
        execute if score @s Sneak matches 200.. run function asset_manager:sacred_treasure/triggers/sneak/reset_threshold_less
        execute if score @s Sneak matches 200.. run function #asset:sacred_treasure/sneak/keep/10s

    # 単発トリガー類
        scoreboard players set $SneakThreshold Temporary 1
        function asset_manager:sacred_treasure/triggers/sneak/reset_value_not-equal
        function #asset:sacred_treasure/sneak/

        execute if score @s Sneak matches 20.. run scoreboard players set $SneakThreshold Temporary 20
        execute if score @s Sneak matches 20.. run function asset_manager:sacred_treasure/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 20.. run function #asset:sacred_treasure/sneak/1s

        execute if score @s Sneak matches 40.. run scoreboard players set $SneakThreshold Temporary 40
        execute if score @s Sneak matches 40.. run function asset_manager:sacred_treasure/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 40.. run function #asset:sacred_treasure/sneak/2s

        execute if score @s Sneak matches 60.. run scoreboard players set $SneakThreshold Temporary 60
        execute if score @s Sneak matches 60.. run function asset_manager:sacred_treasure/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 60.. run function #asset:sacred_treasure/sneak/3s

        execute if score @s Sneak matches 80.. run scoreboard players set $SneakThreshold Temporary 80
        execute if score @s Sneak matches 80.. run function asset_manager:sacred_treasure/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 80.. run function #asset:sacred_treasure/sneak/4s

        execute if score @s Sneak matches 100.. run scoreboard players set $SneakThreshold Temporary 100
        execute if score @s Sneak matches 100.. run function asset_manager:sacred_treasure/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 100.. run function #asset:sacred_treasure/sneak/5s

        execute if score @s Sneak matches 200.. run scoreboard players set $SneakThreshold Temporary 200
        execute if score @s Sneak matches 200.. run function asset_manager:sacred_treasure/triggers/sneak/reset_value_not-equal
        execute if score @s Sneak matches 200.. run function #asset:sacred_treasure/sneak/10s
# イベント発火後に実行するやつ
    function asset_manager:sacred_treasure/data/new/revert_from_current
# リセット
    data remove storage asset:context SneakTime