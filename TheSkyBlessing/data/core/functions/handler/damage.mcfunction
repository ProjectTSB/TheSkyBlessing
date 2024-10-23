#> core:handler/damage
#
# ダメージを受けた際に実行される
#
# @within function core:tick/player/

# バニラ攻撃判定
    function asset_manager:artifact/handler/on_damage_without_source
# Reset
    advancement revoke @s only core:handler/damage
