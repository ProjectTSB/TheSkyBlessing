#> asset_manager:artifact/triggers/attack
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current
# Victim付与
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..150] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run tag @s add Victim
# 神器側に受け渡し
    function #asset:artifact/attack
    execute if entity @s[advancements={asset_manager:artifact/attack/melee=true}] run function #asset:artifact/attack/melee
    execute if entity @s[advancements={asset_manager:artifact/attack/projectile=true}] run function #asset:artifact/attack/projectile
# イベント発火後に実行するやつ
    function asset_manager:artifact/data/new/revert_from_current
# リセット
    advancement revoke @s only asset_manager:artifact/attack/melee
    advancement revoke @s only asset_manager:artifact/attack/projectile