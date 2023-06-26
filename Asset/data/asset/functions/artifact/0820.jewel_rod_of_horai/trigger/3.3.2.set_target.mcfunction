#> asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.2.set_target
#
# 神器の攻撃対象を決定する
# @output
#   score $MS.TargetUUID 攻撃対象のMobUUID
#
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/3.main

#> prv
# @private
  #declare tag MS.BlockChecker
  #declare tag MS.TargetCandidate

# ブロック検知用のdummyエンティティと攻撃発生地点のエンティティセット
    execute rotated as @s run tp 0-0-0-0-0 0.0 0.0 0.0 ~ ~
    tag 0-0-0-0-0 add MS.BlockChecker
    summon area_effect_cloud 0.0 0.01 0.0 {Duration:21,Tags:["MS.BlockChecker","MS.AttackPosition","MS.Init"]}
    execute rotated as @s facing ^ ^ ^-1 as @e[type=area_effect_cloud,tag=MS.BlockChecker] run tp @s 0.0 0.01 0.0 ~ ~

# 自分の視線上の1番手前の通過不可のブロック位置に攻撃発生地点AECを移動、ブロックがなかったら12.8ブロック先に移動
    execute anchored eyes at @s positioned ^ ^ ^6.4 rotated as @e[tag=MS.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^3.2 rotated as @e[tag=MS.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1.6 rotated as @e[tag=MS.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.8 rotated as @e[tag=MS.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.4 rotated as @e[tag=MS.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.2 unless block ~ ~ ~ #lib:no_collision_without_fluid run tp @e[type=area_effect_cloud,tag=MS.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0] ~ ~ ~
    execute anchored eyes at @s positioned ^ ^ ^12.8 run tp @e[type=area_effect_cloud,tag=MS.BlockChecker,distance=..0.1,x=0.0,y=0.0,z=0.0] ~ ~ ~

# 視線上かつブロック検知位置より手前にいるエンティティに候補タグ付け
    execute positioned ^ ^ ^6.4 as @e[type=#lib:living,tag=!Friend,distance=..6.4] positioned as @s anchored eyes positioned ^ ^ ^1000 facing entity @p eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add MS.TargetCandidate
    execute positioned ^ ^ ^6.4 as @e[type=#lib:living,tag=MS.TargetCandidate,distance=..6.4] at @e[type=area_effect_cloud,tag=MS.BlockChecker,distance=..7] facing entity @p[tag=this] feet positioned ^ ^ ^1000 unless entity @s[distance=..1000] run tag @s remove MS.TargetCandidate
    execute positioned ^ ^ ^6.4 as @e[type=#lib:living,tag=MS.TargetCandidate,distance=..6.4] at @p[tag=this] positioned ^ ^ ^1002 unless entity @s[distance=..1000] run tag @s remove MS.TargetCandidate

#1番手前の候補のUUID取得
    execute store result score $MS.TargetUUID Temporary run scoreboard players get @e[type=#lib:living,tag=MS.TargetCandidate,distance=..13,sort=nearest,limit=1] MobUUID

#リセット
    tag 0-0-0-0-0 remove MS.BlockChecker
    tag @e[type=area_effect_cloud,tag=MS.BlockChecker,distance=..13] remove MS.BlockChecker
    tag @e[type=#lib:living,tag=MS.TargetCandidate,tag=!Friend,distance=..13] remove MS.TargetCandidate
