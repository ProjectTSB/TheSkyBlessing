#> core:tick/
#
# #tick時に毎回実行される処理群
#
# ここには多くの処理を書かないこと
#
# @within tag/function minecraft:tick

#> Val
# @private
#declare score_holder $4tInterval

# 現在の時間をglobalに代入する
    execute store result storage global Time int 1 run time query gametime
# プレイヤー数をGlobalオブジェクトに設定する
    execute store result score $PlayerCount Global if entity @a

# EntityFinder の初回攻撃判定をリセットする
    function api:mob/apply_to_forward_target/reset_initial_apply.m {Key:"mob_manager:entity_finder/player_hurt_entity/fetch_entity"}

# 難易度
    function world_manager:force_difficulty

# プレイヤー事前処理
    execute as @a at @s run function core:tick/player/pre

# 矢の事前処理
    execute as @e[type=#arrows,tag=!AlreadyInitArrow] at @s run function player_manager:arrow/init/

# Nexus Loader
    execute if data storage global {IsProduction:1b} run function world_manager:nexus_loader/tick

# 4tick毎のワールド側処理
    scoreboard players add $4tInterval Global 1
    scoreboard players operation $4tInterval Global %= $4 Const
    execute if score $4tInterval Global matches 0 run function core:tick/4_interval

# 神器のグローバルtick処理
    function asset_manager:artifact/tick/

# プレイヤー処理部
    execute as @a at @s run function core:tick/player/

# asset:contextの明示的な全削除
    function asset_manager:common/reset_all_context

# 解呪処理
    execute as @e[type=armor_stand,tag=CursedArtifact,tag=!DispelledCursedArtifact] at @s run function asset_manager:island/tick/

# スポナー処理部
    execute as @e[type=item_display,tag=Spawner] at @s if entity @p[distance=..40] run function asset_manager:spawner/tick/

# テレポーター
    execute as @e[type=item_display,tag=Teleporter] at @s if entity @p[distance=..50] run function asset_manager:teleporter/tick/global

# ワールドギミック
    function world_manager:gimmick/

# Mob処理部
    # データ初期化部
        execute as @e[type=#lib:living,type=!player,tag=!AlreadyInitMob] run function mob_manager:init/
    # MobAsset処理
        execute as @e[type=!player,tag=AssetMob] at @s run function asset_manager:mob/tick/
    # 環境ダメージ処理
        execute as @e[type=#lib:living,type=!player,tag=AlreadyInitMob,nbt=!{Health:512f}] run function mob_manager:fix_health
# Objects処理
    execute as @e[type=!player,tag=AssetObject,tag=!Object.DisableTicking] at @s run function asset_manager:object/triggers/tick
# 汎用タグ処理
    execute as @e[type=!player] at @s run function mob_manager:processing_tag/

# エフェクト処理
    execute as @e[type=#lib:living,tag=HasAssetEffect] at @s run function asset_manager:effect/tick

# asset:contextの明示的な全削除
    function asset_manager:common/reset_all_context

# 墓
    execute as @e[type=item_display,tag=Grave] at @s run function player_manager:grave/tick/

# ItemMetaDataチェック
    execute as @e[type=item,tag=!ItemMetaChecked] run function core:tick/check_item_meta/entity

# ダメージログに対するtick処理
    execute as @e[type=armor_stand,tag=LogAEC] at @s run function lib:status_log/tick

# tick処理後のプレイヤー処理部
    execute as @a at @s run function core:tick/player/post

# 0-0-0-0-0消失警告
    execute if loaded 0 0 0 unless entity 0-0-0-0-0 run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"0-0-0-0-0が参照できません。システム内で重大な問題が発生する可能性があります。"}]
