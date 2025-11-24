#> player_manager:mp/regen/do
#
# MPを回復します
#
# @within function player_manager:mp/regen/check

# 回復量を取り出す
    execute store result storage api: Argument.Fluctuation double 0.001 run scoreboard players get @s MPMax
# 表示を無効化する
    data modify storage api: Argument.DisableLog set value true
# 回復
    function api:mp/fluctuation
# クールダウンリセット
    scoreboard players set @s MPRegenCooldown 0
