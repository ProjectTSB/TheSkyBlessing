#> asset_manager:effect/tick
#
#
#
# @within function core:tick/

# EntityStorage呼び出し
    function oh_my_dat:please
# 必要なデータ取得
    data modify storage asset:effect Effects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
# 死亡判定
    execute if entity @s[tag=Death] run tag @s add DeathProcess
    execute if score @s UsedTotem matches 1.. run tag @s add DeathProcess
# 各エフェクトを処理する
    data modify storage asset:effect NextTickEffects set value []
    execute if data storage asset:effect Effects[0] run function asset_manager:effect/foreach
# 付与されているエフェクトが何もなければタグを消す
    execute unless data storage asset:effect NextTickEffects[0] run tag @s remove HasAssetEffect
# EntityStorage呼び出し(Asset側処理内でポインタが変わっている可能性があるので)
    function oh_my_dat:please
# 元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects append from storage asset:effect NextTickEffects[]

# リセット
    scoreboard players reset @s UsedMilk
    scoreboard players reset @s UsedTotem
    tag @s remove DeathProcess
    data remove storage asset:effect NextTickEffects
    data remove storage asset:effect Effects
