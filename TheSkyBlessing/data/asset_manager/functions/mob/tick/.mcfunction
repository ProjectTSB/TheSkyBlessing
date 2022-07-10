#> asset_manager:mob/tick/
#
# AssetMobに毎tick実行する処理
#
# @within function core:tick/

# 汎用タグの処理
    function asset_manager:mob/common_tag/
# MOB周りのトリガー処理
    function asset_manager:mob/triggers/
# 天使のボスバー処理
    execute if entity @s[tag=BossbarTarget] run function asset_manager:mob/bossbar/tick