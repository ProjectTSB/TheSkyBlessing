#> asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick
#
# 発動中は実行され続ける
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/2.windup

# 角度変えつつショット召喚
    execute if score @s RW.Tick matches 1 positioned ~ ~1.5 ~ rotated ~40 ~ run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
    execute if score @s RW.Tick matches 2 positioned ~ ~1.5 ~ rotated ~30 ~ run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
    execute if score @s RW.Tick matches 3 positioned ~ ~1.5 ~ rotated ~20 ~ run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
    execute if score @s RW.Tick matches 4 positioned ~ ~1.5 ~ rotated ~10 ~ run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
    execute if score @s RW.Tick matches 5 positioned ~ ~1.5 ~ rotated ~0 ~ run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
    execute if score @s RW.Tick matches 6 positioned ~ ~1.5 ~ rotated ~-10 ~ run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
    execute if score @s RW.Tick matches 7 positioned ~ ~1.5 ~ rotated ~-20 ~ run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
    execute if score @s RW.Tick matches 8 positioned ~ ~1.5 ~ rotated ~-30 ~ run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
    execute if score @s RW.Tick matches 9 positioned ~ ~1.5 ~ rotated ~-40 ~ run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot

# 放つ
    execute if score @s RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.shoot

# デバッグ用、技をループする
    #execute if score @s RW.Tick matches 50 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/reset
