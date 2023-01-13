#> asset:mob/1004.tultaria/hurt/test_hp50
#
# デバッグ用、HPを50%まで下げた扱いにする
#
# @within function asset:mob/1004.tultaria/tick/**

scoreboard players set @e[type=wither_skeleton,scores={MobID=1004}] RW.Tick 0
scoreboard players set @e[type=wither_skeleton,scores={MobID=1004}] RW.Phase 2
tag @e[type=wither_skeleton,scores={MobID=1004}] add RW.HPless50per