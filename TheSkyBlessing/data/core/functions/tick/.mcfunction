#> core:tick/
#
# #tick時に毎回実行される処理群
#
# ここには多くの処理を書かないこと
#
# @within tag/function minecraft:tick

# デバッグ用TickRate操作システム
    execute if data storage global {IsProduction:0b} if score $AwaitTime Global matches -2147483648..2147483647 run function lib:debug/tps/watch

# 現在の時間をglobalに代入する
    execute store result storage global Time int 1 run time query gametime
# プレイヤー数をGlobalオブジェクトに設定する
    execute store result score $PlayerCount Global if entity @a
# 読み込み時間を加算
    scoreboard players add $LoadTime Global 1

# プレイヤー事前処理
    function core:tick/player/pre

# 神器のグローバルtick処理
    function asset_manager:sacred_treasure/tick/

# プレイヤー処理部
    execute as @a at @s run function core:tick/player/

# asset:contextの明示的な全削除
    function asset_manager:common/reset_all_context

# 解呪処理
    execute as @e[type=armor_stand,tag=CursedTreasure,tag=!DispelledCursedTreasure] at @s run function asset_manager:island/tick/

# スポナー処理部
    execute as @e[type=snowball,tag=Spawner,tag=!BreakSpawner] at @s if entity @p[distance=..40] run function asset_manager:spawner/tick/

# ワールドギミック
    function world_manager:gimmick/

# Mob処理部
    # データ初期化部
        execute as @e[type=#lib:living,type=!player,tag=!AlreadyInitMob] run function mob_manager:init/
    # MobAsset処理
        execute as @e[tag=AssetMob] at @s run function asset_manager:mob/tick

# asset:contextの明示的な全削除
    function asset_manager:common/reset_all_context

# ItemMetaDataチェック
    execute as @e[type=item,tag=!ItemMetaChecked] run function core:tick/check_item_meta/entity

# ダメージログに対するtick処理
    execute as @e[type=armor_stand,tag=LogAEC] at @s run function lib:status_log/tick

# tick処理後のプレイヤー処理部
    execute as @a at @s run function core:tick/player/post

# 攻撃元/先の紐づけをリセット
    execute if entity @a[scores={AttackingEntity=0..}] run function mob_manager:entity_finder/attacking_entity/reset
    execute if entity @a[scores={AttackedEntity=0..}] run function mob_manager:entity_finder/attacked_entity/reset

# 0-0-0-0-0消失警告
    execute if score $LoadTime Global matches 160.. unless entity 0-0-0-0-0 run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"0-0-0-0-0が参照できません。システム内で重大な問題が発生する可能性があります。"}]