#> asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick_phase3
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 移動する
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/2.move_to_ground

# 構える
    execute if score @s RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/2.windup
    # 角度変えつつショット召喚
        execute if score @s RW.Tick matches 20 positioned ~ ~1.5 ~ rotated ~40 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 21 positioned ~ ~1.5 ~ rotated ~30 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 22 positioned ~ ~1.5 ~ rotated ~20 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 23 positioned ~ ~1.5 ~ rotated ~10 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 24 positioned ~ ~1.5 ~ rotated ~0 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 25 positioned ~ ~1.5 ~ rotated ~-10 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 26 positioned ~ ~1.5 ~ rotated ~-20 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 27 positioned ~ ~1.5 ~ rotated ~-30 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 28 positioned ~ ~1.5 ~ rotated ~-40 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        # 放つ
            execute if score @s RW.Tick matches 29 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.shoot

    # 角度変えつつショット召喚
        execute if score @s RW.Tick matches 35 positioned ~ ~1.5 ~ rotated ~-35 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 36 positioned ~ ~1.5 ~ rotated ~-25 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 37 positioned ~ ~1.5 ~ rotated ~-15 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 38 positioned ~ ~1.5 ~ rotated ~-5 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 39 positioned ~ ~1.5 ~ rotated ~5 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 40 positioned ~ ~1.5 ~ rotated ~15 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 41 positioned ~ ~1.5 ~ rotated ~25 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 42 positioned ~ ~1.5 ~ rotated ~35 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        # 放つ
            execute if score @s RW.Tick matches 43 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.shoot

    # 角度変えつつショット召喚
        execute if score @s RW.Tick matches 48 positioned ~ ~1.5 ~ rotated ~40 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 49 positioned ~ ~1.5 ~ rotated ~30 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 50 positioned ~ ~1.5 ~ rotated ~20 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 51 positioned ~ ~1.5 ~ rotated ~10 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 52 positioned ~ ~1.5 ~ rotated ~0 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 53 positioned ~ ~1.5 ~ rotated ~-10 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 54 positioned ~ ~1.5 ~ rotated ~-20 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 55 positioned ~ ~1.5 ~ rotated ~-30 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 56 positioned ~ ~1.5 ~ rotated ~-40 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        # 放つ
            execute if score @s RW.Tick matches 57 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.shoot

# リセット
    execute if score @s RW.Tick matches 100 run function asset:mob/1004.tultaria/tick/reset
