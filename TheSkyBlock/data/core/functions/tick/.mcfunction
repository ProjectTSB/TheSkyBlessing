#> core:tick/
#
# #tick時に毎回実行される処理群
#
# ここには多くの処理を書かないこと
#
# @within tag/function minecraft:tick

# 現在の時間をglobalに代入する
    execute store result storage global Time int 1 run time query gametime
# 神器のグローバルクールダウン
    execute if score $SacredTreasureSpecialCooldown Global matches 1.. run scoreboard players remove $SacredTreasureSpecialCooldown Global 1

# プレイヤー処理部
    execute as @a at @s run function core:tick/player

# asset:contextの明示的な全削除
    function asset_manager:common/reset_all_context

# Mob処理部
    # データ初期化部
        execute as @e[type=#lib:living,type=!player,tag=!AlreadyInitMob] run function mob_manager:init/
    # MobAsset処理
        execute as @e[tag=AssetMob] at @s run function asset_manager:mob/tick

# asset:contextの明示的な全削除
    function asset_manager:common/reset_all_context

# ItemMetaDataチェック
    execute as @e[type=item] run function core:tick/check_item_meta/entity

# tick処理後のプレイヤー処理部
    execute as @a at @s run function core:tick/post-tick-proc_player

# 攻撃元/先の紐づけをリセット
    execute if entity @a[scores={AttackingEntity=0..}] run function mob_manager:entity_finder/attacking_entity/reset
    execute if entity @a[scores={AttackedEntity=0..}] run function mob_manager:entity_finder/attacked_entity/reset

# 0-0-0-0-0消失警告
    execute unless entity 0-0-0-0-0 run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"0-0-0-0-0が参照できません。システム内で重大な問題が発生する可能性があります。"}]