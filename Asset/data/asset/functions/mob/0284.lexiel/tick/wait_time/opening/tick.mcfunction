#> asset:mob/0284.lexiel/tick/wait_time/opening/tick
#
# 召喚時にポーズとる
#
# @within function asset:mob/0284.lexiel/tick/2.tick
#> private
# @private
    #declare score_holder 7W.TargetModel

# ポーズ(構え)
    execute if score @s 7W.Tick matches 1 as @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run function asset:mob/0284.lexiel/tick/wait_time/opening/change_pose_1


    execute if score @s 7W.Tick matches 40 as @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run function asset:mob/0284.lexiel/tick/wait_time/opening/change_pose_2

# デバッグ用、この行動をループ
    #execute if score @s 7W.Tick matches 70.. run scoreboard players set @s 7W.Tick -40

# 無敵解除、戦闘開始
    execute if score @s 7W.Tick matches 75 run function asset:mob/0284.lexiel/tick/wait_time/opening/battle_start