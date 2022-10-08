#> asset:mob/1004.tultaria/hurt/test_hp75
#
# デバッグ用、HPを75%まで下げた扱いにする
#
# @within function asset:mob/1004.tultaria/tick/wait_time/phase2_transition/1.tick

scoreboard players set @e[type=wither_skeleton,scores={MobID=1004}] RW.Tick 0
scoreboard players set @e[type=wither_skeleton,scores={MobID=1004}] RW.Phase 1
tag @e[type=wither_skeleton,scores={MobID=1004}] add RW.HPless75per