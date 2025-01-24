#> core:load
#
# #load時に毎回実行される処理群
#
# @within tag/function minecraft:load


# ⚠️ リリース時のみtrueにすること。 これをtrueにした場合、ワールドに不可逆的な登録処理が発生します。 ⚠️
    data modify storage global IsProduction set value true


# 初回限定ロード
    execute if data storage global {IsProduction:1b} unless data storage global GameVersion run function core:load_once
    execute if data storage global {IsProduction:0b} run function core:load_once

# マイグレーション
    function core:migration/

# 神器のレジストリ読み込み
    function asset_manager:artifact/load
