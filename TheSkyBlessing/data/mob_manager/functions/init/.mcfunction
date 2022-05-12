#> mob_manager:init/
#
# Mobのデータを初期化します
#
# @within function
#   core:tick/
#   asset_manager:mob/summon/set_data

# 識別用のフラグセット
    function mob_manager:init/add_flag
# 体力を緩衝体力に移す処理
    execute if entity @s[tag=!AssetMob] run function mob_manager:init/modify_health
# AssetMobで無い時、タグを付与しEnemyをチームに入れる
    execute if entity @s[tag=!AssetMob] run function mob_manager:init/set_tag_and_team
# 初期化フラグ追加
    tag @s add AlreadyInitMob