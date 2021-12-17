#> mob_manager:init/
#
# Mobのデータを初期化します
#
# @within function
#   core:tick/
#   asset_manager:mob/summon/set_data

# 識別用のフラグセット
    function mob_manager:init/add_flag
# AssetMobで無ければタグの付与
    execute if entity @s[tag=!AssetMob] run function mob_manager:init/add_tag
# 初期化フラグ追加
    tag @s add AlreadyInitMob