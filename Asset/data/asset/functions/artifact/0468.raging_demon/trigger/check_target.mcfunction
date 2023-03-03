#> asset:artifact/0468.raging_demon/trigger/check_target
#
# 周囲10M以内の体力が20以下の敵1体に7k.Targetタグを付与
# 対象の敵がいないときはCanUsedを削除
#
# @within function asset:artifact/0468.raging_demon/trigger/2.check_condition
#> Private
# @private
    #declare tag CanUsed

# 周囲10M以内の敵全てのHPを取得
    execute as @e[tag=Enemy,tag=!Uninterferable,distance=..10] store result score @s Temporary run data get entity @s AbsorptionAmount
# 周囲10M以内のHPが20以下のエンティティ1体を絞り込み、ターゲットタグを付与
    execute as @e[tag=Enemy,tag=!Uninterferable,scores={Temporary=..20},distance=..10,limit=1] run tag @s add D0.Target
# 対象となるターゲットがいない場合、処理を実行しない
    execute unless entity @e[tag=Enemy,tag=D0.Target,distance=..10] run tag @s remove CanUsed

# リセット
    scoreboard players reset @e[tag=Enemy,tag=!Uninterferable,distance=..10] Temporary