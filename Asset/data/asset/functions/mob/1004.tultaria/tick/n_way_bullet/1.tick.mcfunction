#> asset:mob/1004.tultaria/tick/n_way_bullet/1.tick
#
# 発動中は実行され続ける
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/n_way_bullet/2.windup

# 予告
    execute if score @s RW.Tick matches 10 positioned ~ ~1.5 ~ facing entity @r feet run function asset:mob/1004.tultaria/tick/n_way_bullet/3.1.targeting

# 放つ
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/n_way_bullet/4.shoot

# デバッグ用、技をループする
    execute if score @s RW.Tick matches 70 run scoreboard players set @s RW.Tick -10

# リセット
    #execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/reset
