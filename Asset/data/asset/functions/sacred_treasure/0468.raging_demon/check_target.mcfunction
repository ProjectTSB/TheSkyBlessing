#> asset:sacred_treasure/0468.raging_demon/check_target
#
# 周囲10M以内の体力が20以下の敵1体に7k.Targetタグを付与
# 対象の敵がいないときはCanUsedを削除
#
# @within function asset:sacred_treasure/0468.raging_demon/2.check_condition
#> Private
# @private
    #declare tag CanUsed

# データ取得
    function api:data_get/health

# 周囲10M以内の敵全てのHPを取得
    execute as @e[tag=Enemy,distance=..10] store result score @s Temporary run data get storage api: Health 1
# 周囲10M以内のHPが20以下のエンティティ1体を絞り込み、ターゲットタグを付与
    execute as @e[tag=Enemy,scores={Temporary=..20},distance=..10,limit=1] run tag @s add 7k.Target
# 対象となるターゲットがいない場合、処理を実行しない
    execute unless entity @e[tag=Enemy,tag=7k.Target,distance=..10] run tag @s remove CanUsed

# リセット
    scoreboard players reset @e[tag=Enemy,distance=..10] Temporary