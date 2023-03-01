#> asset_manager:mob/triggers/death/manual
#
# 手動で死亡トリガーを呼び出します
#
# @within function api:damage/core/health_subtract/non-player

# 既存のデータを退避させる
    function asset_manager:common/context_id/stash
    function api:common/arguments/stash
# すでにCommandSourceStackとしてこのentityを掴んでいて同tick内にlib:damage/を実行する可能性に備えてタグを付与する
    tag @s add Death
# 引数の設定
    execute store result storage api: Argument.ID int 1 run scoreboard players get @s MobID
# スポナーへのダメージ処理
    function api:spawner/subtract_hp
# contextの設定
    execute store result storage asset:context id int 1 run scoreboard players get @s MobID
    execute store result storage asset:context uuid int 1 run scoreboard players get @s MobUUID
# 実際の死亡時にもう一度Deathが実行されないためにDeathLootTableを消し飛ばす
    data modify entity @s DeathLootTable set value "empty"
# さいなら～
    kill @s
# トリガーの呼び出し
    function asset_manager:mob/triggers/death/call
# 退避させたデータを戻す
    function asset_manager:common/context_id/pop
    function api:common/arguments/pop
# リセット
    data remove storage asset:context uuid
    tag @a[tag=Killer] remove Killer