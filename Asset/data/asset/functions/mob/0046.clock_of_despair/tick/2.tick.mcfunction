#> asset:mob/0046.clock_of_despair/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0046.clock_of_despair/tick/1.trigger

#> private
# @private
#declare score_holder $IntervalTime

# スコアを増やす
    scoreboard players add @s 1A.LifeTime 1


# プレイヤーが周囲にいないのに時間がきてしまった場合。スコアを戻す。
    execute if score @s 1A.LifeTime matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s 1A.LifeTime -1

# スキル発動
    function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 時計の針の回転
    execute as @e[type=armor_stand,tag=1A.ClockHand,distance=..0.1,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~0.15 ~

# 2tick毎のVFX
    scoreboard players operation $IntervalTime Temporary = @s 1A.LifeTime
    scoreboard players operation $IntervalTime Temporary %= $2 Const
    execute if score $IntervalTime Temporary matches 0 run function asset:mob/0046.clock_of_despair/tick/2t_interval_vfx
    scoreboard players reset $IntervalTime Temporary
# 40tick(2秒)毎の高高度ペナルティ
    scoreboard players operation $IntervalTime Temporary = @s 1A.LifeTime
    scoreboard players operation $IntervalTime Temporary %= $40 Const
    execute if score $IntervalTime Temporary matches 0 positioned ~-15 ~3.2 ~-15 at @a[dx=29,dy=25,dz=29] positioned ~ ~1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/penalty_thunder/summon
    scoreboard players reset $IntervalTime Temporary
# 200tick(10秒)毎のSE
    scoreboard players operation $IntervalTime Temporary = @s 1A.LifeTime
    scoreboard players operation $IntervalTime Temporary %= $200 Const
    execute if score $IntervalTime Temporary matches 0 run playsound minecraft:block.bell.use hostile @a ~ ~ ~ 2 0.5 1
    execute if score $IntervalTime Temporary matches 0 run playsound minecraft:block.bell.use hostile @a ~ ~ ~ 2 0.5 1
    execute if score $IntervalTime Temporary matches 0 run playsound minecraft:block.bell.use hostile @a ~ ~ ~ 2 0.5 1
    scoreboard players reset $IntervalTime Temporary


# もしアマスタがどっかいってしまったら
    execute at @s unless entity @e[type=armor_stand,tag=1A.ClockHand,distance=..0.01] run function asset:mob/0046.clock_of_despair/tick/armorstand_respawn

# スキル用の常時実行
    schedule function asset:mob/0046.clock_of_despair/tick/schedule 1t replace

# プレイヤーを引き寄せる
    execute as @a[distance=10..13] at @s facing entity @e[type=zombie,tag=this,distance=..13,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.4
    execute as @a[distance=13..20] at @s facing entity @e[type=zombie,tag=this,distance=..20,sort=nearest,limit=1] eyes run tp @s ^ ^ ^1.0
    execute as @a[distance=20..30] at @s facing entity @e[type=zombie,tag=this,distance=..30,sort=nearest,limit=1] eyes run tp @s ^ ^ ^1.5
    execute as @a[distance=30..100] at @s facing entity @e[type=zombie,tag=this,distance=..100,sort=nearest,limit=1] eyes positioned as @e[type=zombie,tag=this,distance=..100] rotated ~ 0 run tp @s ^ ^ ^2