#> asset:mob/0060.self_destructor/tick/4.self-desruct
#
#
#
# @within function asset:mob/0060.self_destructor/tick/2.tick

# 演出
    particle explosion ~ ~ ~ 5 5 5 1 140 normal @a
    particle flame ~ ~ ~ 5 5 5 0 140 normal @a
    playsound entity.generic.explode hostile @a[distance=..20] ~ ~ ~ 2 1.2 0
    playsound entity.generic.explode hostile @a[distance=..20] ~ ~ ~ 2 0.6 0

# ダメージ
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..7.5] run function asset:mob/0060.self_destructor/tick/5.damage_distance

# 連鎖爆発
   scoreboard players set @e[type=zombie,scores={MobID=60},distance=..7.5] 1O.ExplodeFuse 36
   scoreboard players set @e[type=zombie,scores={MobID=60},distance=..7.5] 1O.ExplodeCnt 8

  # 消滅
      tp @s ~ -10 ~
      kill @s