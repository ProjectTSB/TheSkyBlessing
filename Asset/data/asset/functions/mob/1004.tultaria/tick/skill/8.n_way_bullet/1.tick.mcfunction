#> asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick
#
# 発動中は実行され続ける
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# パーチクル
    particle minecraft:dust 0.7 0 0 0.5 ~ ~ ~ 0 0 0 0 0 force

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/2.windup

# 放つ
    execute if score @s RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.shoot

# 構える
    execute if score @s RW.Tick matches 15 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/2.windup

# 放つ
    execute if score @s RW.Tick matches 25 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.shoot

# 構える
    execute if score @s RW.Tick matches 30 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/2.windup

# 放つ
    execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.shoot

# デバッグ用、技をループする
    #execute if score @s RW.Tick matches 70 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 70 run function asset:mob/1004.tultaria/tick/reset
