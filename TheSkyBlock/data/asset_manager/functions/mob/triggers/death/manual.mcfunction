#> asset_manager:mob/triggers/death/manual
#
# 手動で死亡トリガーを呼び出します
#
# @within function lib:damage/core/non-player-process

# Contextの設定
    execute store result storage asset:context id int 1 run scoreboard players get @s MobID
    data modify entity @s DeathLootTable set value "empty"
    kill @s
# スポナーへのダメージ処理
    function asset_manager:spawner/subtract_hp/
# トリガーの呼び出し
    function #asset:mob/death
# リセット
    data remove storage asset:context id
    tag @a[tag=Killer] remove Killer