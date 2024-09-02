#> asset:object/common/summon
#
# Summonトリガー
#
# @within function
#   api:object/core/summon
#   asset_manager:object/summon/call_super_method

# Contextの設定
    execute store result storage asset:context id int 1 run scoreboard players get @s MobID

# Summon処理を実行
    function asset_manager:object/summon/

# リセット
    data remove storage asset:context id
    data remove storage asset:context this
