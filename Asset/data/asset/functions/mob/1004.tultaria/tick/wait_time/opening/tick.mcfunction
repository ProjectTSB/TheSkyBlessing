#> asset:mob/1004.tultaria/tick/wait_time/opening/tick
#
# 召喚時にポーズとる
#
# @within function asset:mob/1004.tultaria/tick/2.tick
#> private
# @private
    #declare score_holder RW.TargetModel

# ポーズ(構え)
    execute if score @s RW.Tick matches 10 as @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/wait_time/opening/change_pose_1

# 画面エフェクト
    execute if score @s RW.Tick matches 20 run title @a[distance=..50] times 5 30 2
    execute if score @s RW.Tick matches 20 run title @a[distance=..50] title {"text":"","font":"screen_effect","color":"black"}

# 文字表示
    execute if score @s RW.Tick matches 25 run title @a[distance=..50] subtitle {"text":"創","color":"white"}
    execute if score @s RW.Tick matches 27 run title @a[distance=..50] subtitle {"text":"創生","color":"white"}
    execute if score @s RW.Tick matches 29 run title @a[distance=..50] subtitle {"text":"創世神","color":"white"}
    execute if score @s RW.Tick matches 40 run title @a[distance=..50] subtitle [{"text":"創世神 ","color":"white"},{"text":"トゥルタリア","color":"#A33033"}]
    execute if score @s RW.Tick matches 40 at @a[distance=..50] run playsound minecraft:entity.blaze.shoot neutral @p ~ ~ ~ 1 1
    execute if score @s RW.Tick matches 50 as @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/wait_time/opening/change_pose_2

# デバッグ用、この行動をループ
    #execute if score @s RW.Tick matches 70.. run scoreboard players set @s RW.Tick -40

# 無敵解除、戦闘開始
    execute if score @s RW.Tick matches 70 run function asset:mob/1004.tultaria/tick/wait_time/opening/battle_start