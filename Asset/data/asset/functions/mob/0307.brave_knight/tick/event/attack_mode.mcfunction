#> asset:mob/0307.brave_knight/tick/event/attack_mode
#
#
#
# @within function asset:mob/0307.brave_knight/tick/2.tick



# 付近に敵がいたらそっちへ移動
    execute facing entity @e[type=#lib:living,tag=Enemy,tag=0307.TargetedEnemy,distance=1.5..15,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.3 ~ ~

# 近くの敵の方を向く
    execute unless entity @s[tag=8J.FacingLock] facing entity @e[type=#lib:living,tag=Enemy,tag=0307.TargetedEnemy,distance=..1.5,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# オーナーの最寄りの敵にパーティクル出す
    execute as @e[type=#lib:living,tag=Enemy,tag=0307.TargetedEnemy,distance=..8] at @s anchored eyes run particle dust 1 0 0 0.7 ^ ^0.5 ^ 0 0 0 1 1 normal @p[tag=8J.OwnerPlayer]

# 剣ぶんまわし
    execute if entity @e[type=#lib:living,tag=Enemy,tag=0307.TargetedEnemy,distance=..2,sort=nearest,limit=1] run function asset:mob/0307.brave_knight/tick/event/combo/main

# 攻撃モード時、離れ過ぎると帰ってくる
    execute unless entity @e[type=marker,tag=8J.OwnerMarker,distance=..10,limit=1] run function asset:mob/0307.brave_knight/tick/event/force_back

# 付近に敵がいなかったら解除
    execute unless entity @e[type=#lib:living,tag=Enemy,tag=0307.TargetedEnemy,distance=..8] run function asset:mob/0307.brave_knight/tick/event/turn_off_attackmode