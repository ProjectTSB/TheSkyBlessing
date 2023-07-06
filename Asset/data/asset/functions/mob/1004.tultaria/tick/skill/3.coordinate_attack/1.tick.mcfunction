#> asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/1.tick
#
# イカヅチ攻撃
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/2.windup

# 振る
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/3.activate

# 一個はプレイヤーに仕掛けておく
    execute if score @s RW.Tick matches 20 at @a run summon marker ~ ~ ~ {Tags:["RW.TargetMarker"]}
    execute if score @s RW.Tick matches 20 at @a run particle explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..30]

# マーカーを散らす
    execute if score @s[scores={RW.Phase=1}] RW.Tick matches 21..25 run function asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/4.call_thunder
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 21..27 run function asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/4.call_thunder

# マーカーに対して雷を召喚
    execute if score @s RW.Tick matches 35 at @a run function asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/6.vfx
    execute if score @s RW.Tick matches 35 at @e[type=marker,tag=RW.TargetMarker,distance=..100] positioned ~ ~ ~ run function asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/5.thunder
    execute if score @s RW.Tick matches 35 run kill @e[type=marker,tag=RW.TargetMarker,distance=..100]

# デバッグ用、この行動をループする
    #execute if score @s RW.Tick matches 50 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 70 run function asset:mob/1004.tultaria/tick/base_move/reset