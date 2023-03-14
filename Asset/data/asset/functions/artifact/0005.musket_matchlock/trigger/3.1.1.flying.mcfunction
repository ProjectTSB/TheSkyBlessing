#> asset:artifact/0005.musket_matchlock/trigger/3.1.1.flying
# 
# 銃弾の速度を維持する
#
# @within function asset:artifact/0005.musket_matchlock/trigger/3.1.entity_manager

# motionセット
    data modify storage lib: Argument.VectorMagnitude set value 5.0
    execute at @s as @e[type=snowball,tag=5.MatchlockEntity,distance=..2,sort=nearest,limit=1] run function lib:motion/

# 飛翔時間減少
    scoreboard players remove @s[scores={5.FlyingDuration=1..}] 5.FlyingDuration 1

# 飛翔時間を超過したエンティティを削除
    execute if score @s 5.FlyingDuration matches 0 run kill @e[type=snowball,tag=5.MatchlockEntity,distance=..2,sort=nearest,limit=1]
    execute if score @s 5.FlyingDuration matches 0 run kill @s

# reset
    data remove storage lib: Argument