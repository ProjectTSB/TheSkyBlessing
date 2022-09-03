#> asset:mob/1004.tultaria/tick/wait_time/opening/tick
#
# 召喚時にポーズとる
#
# @within function asset:mob/1004.tultaria/tick/2.tick
#> private
# @private
    #declare score_holder RW.TargetModel

# ポーズ(構え)
    execute if score @s RW.Tick matches 30 as @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/wait_time/opening/change_pose_1

# ポーズ(構え2)
    execute if score @s RW.Tick matches 50 as @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/wait_time/opening/change_pose_2

# 無敵解除、戦闘開始
    execute if score @s RW.Tick matches 70 run function asset:mob/1004.tultaria/tick/wait_time/opening/battle_start