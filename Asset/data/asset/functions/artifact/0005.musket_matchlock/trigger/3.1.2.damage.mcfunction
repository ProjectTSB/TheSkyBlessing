#> asset:artifact/0005.musket_matchlock/trigger/3.1.2.damage
#
# 着弾地点にいるmarkerを起点として、ダメージ処理を行う
#
# @within function asset:artifact/0005.musket_matchlock/trigger/3.1.entity_manager

#> private
# @private
    #declare tag 5.BulletHit
    #declare tag 5.HitPosition
    #declare tag 5.Owner
    #declare tag 5.BlockChecker
    #declare score_holder $5.OwnerId

# 命中判定用AEC召喚
    summon area_effect_cloud ~ ~-0.1875 ~ {Duration:1,Tags:["5.HitPosition"]}

# ブロック検知用のdummyエンティティ召喚
    execute rotated as @s run tp 0-0-0-0-0 0.0 0.0 0.0 ~ ~
    tag 0-0-0-0-0 add 5.BlockChecker
    summon area_effect_cloud 0.0 0.01 0.0 {Duration:1,Tags:["5.BlockChecker"]}
    execute rotated as @s facing ^ ^ ^-1 as @e[type=area_effect_cloud,tag=5.BlockChecker] run tp @s 0.0 0.01 0.0 ~ ~

# 使用者取得
    scoreboard players operation $5.OwnerId Temporary = @s 5.OwnerId
    execute as @a if score @s UserID = $5.OwnerId Temporary run tag @s add 5.Owner

# Damage計算(40*FlyingDuration)
    execute store result storage lib: Argument.Damage float 40 run scoreboard players get @s 5.FlyingDuration

# 属性セット
    data modify storage lib: Argument.AttackType set value "Physical"

# 自分の視線上の1番手前の通過不可のブロック位置に攻撃発生地点AECを移動、ブロックがなかったら6.4ブロック先に移動
    execute as @e[type=area_effect_cloud,tag=5.HitPosition,distance=..1,limit=1] anchored eyes at @s positioned ^ ^ ^3.2 rotated as @e[tag=5.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1.6 rotated as @e[tag=5.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.8 rotated as @e[tag=5.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.4 rotated as @e[tag=5.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.2 unless block ~ ~ ~ #lib:no_collision run tp @e[type=area_effect_cloud,tag=5.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0] ~ ~ ~
    execute as @e[type=area_effect_cloud,tag=5.HitPosition,distance=..1,limit=1] anchored eyes at @s positioned ^ ^ ^6.4 run tp @e[type=area_effect_cloud,tag=5.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0] ~ ~ ~

# MatchlockIndicatorの前方かつ、MatchlockIndicatorの視線の直線上かつブロック検知用のdummyの手前にいる敵にダメージ
    execute as @e[type=#lib:living,type=!player,distance=..6] anchored eyes positioned as @s positioned ^ ^ ^1000 facing entity @e[type=area_effect_cloud,tag=5.HitPosition] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add 5.BulletHit
    execute as @e[type=#lib:living,tag=5.BulletHit,distance=..6] positioned as @s positioned ^ ^ ^-5 if entity @e[type=area_effect_cloud,tag=5.BlockChecker,distance=..4] run tag @s remove 5.BulletHit
    execute as @p[tag=5.Owner] run function lib:damage/modifier
    execute as @e[type=#lib:living,tag=5.BulletHit,distance=..6,sort=nearest,limit=1] run function lib:damage/

# Indicator削除
    kill @s

# reset
    function lib:damage/reset
    tag @a[tag=5.Owner] remove 5.Owner
    tag @e[type=#lib:living,tag=5.BulletHit,distance=..6] remove 5.BulletHit
    tag 0-0-0-0-0 remove 5.BlockChecker
    kill @e[type=area_effect_cloud,tag=5.BlockChecker,distance=..7]
    kill @e[type=area_effect_cloud,tag=5.HitPosition,distance=..1]
    scoreboard players reset $5.OwnerId Temporary
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
