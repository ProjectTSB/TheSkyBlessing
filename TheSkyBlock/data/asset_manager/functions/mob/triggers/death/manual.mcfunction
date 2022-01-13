#> asset_manager:mob/triggers/death/manual
#
# 手動で死亡トリガーを呼び出します
#
# @within function lib:damage/core/health_subtract/non-player

# Contextの設定
    execute store result storage asset:context id int 1 run scoreboard players get @s MobID
# 実際の死亡時にもう一度Deathが実行されないためにDeathLootTableを消し飛ばす
    data modify entity @s DeathLootTable set value "empty"
# すでにCommandSourceStackとしてこのentityを掴んでいて同tick内にlib:damage/を実行する可能性に備えてタグを付与する
    tag @s add Death
# さよなら～
    kill @s
# スポナーへのダメージ処理
    function asset_manager:spawner/subtract_hp/
# トリガーの呼び出し
    function #asset:mob/death
# リセット
    data remove storage asset:context id
    tag @a[tag=Killer] remove Killer