#> mob_manager:init/
#
# Mobのデータを初期化します
#
# @within function
#   core:tick/
#   asset_manager:mob/summon/set_data

# 識別用のフラグセット
    function mob_manager:init/add_flag
# AssetMobで無い時、タグを付与しEnemyをチームに入れる
    execute unless function api:mob/is_asset_mob run function mob_manager:init/set_tag_and_team
# 体力を緩衝体力に移す処理
    execute unless function api:mob/is_asset_mob run function mob_manager:init/modify_health
# 初期化フラグ追加
    tag @s add AlreadyInitMob
