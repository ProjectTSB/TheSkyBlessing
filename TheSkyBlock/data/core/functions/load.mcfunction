#> core:load
#
# #load時に毎回実行される処理群
#
# @within tag/function minecraft:load


# ⚠️ リリース時のみtrueにすること。 これをtrueにした場合、ワールドに不可逆的な登録処理が発生します。 ⚠️
    data modify storage global IsProduction set value false


# 初回限定ロード
    execute unless data storage global {Version:30} run function core:load_once
# 神器のレジストリ読み込み
    function asset_manager:sacred_treasure/load
# 初期化処理
    scoreboard players set $LoadTime Global 0
    execute if data storage global {IsProduction:0b} run function #asset:mob/load
    execute if data storage global {IsProduction:0b} run function #asset:sacred_treasure/load