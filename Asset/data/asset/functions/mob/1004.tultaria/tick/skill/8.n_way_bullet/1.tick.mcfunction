#> asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick
#
# 発動中は実行され続ける
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 慣性切る
    execute if score @s RW.Tick matches 0 run tag @s add RW.DisableInertia

# 移動する
    execute if score @s RW.Tick matches 0 at @s run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/2.move_to_ground

# 構える
    execute if score @s RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/2.windup
    # 角度変えつつショット召喚
        execute if score @s RW.Tick matches 21 positioned ~ ~1.5 ~ rotated ~40 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 22 positioned ~ ~1.5 ~ rotated ~30 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 23 positioned ~ ~1.5 ~ rotated ~20 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 24 positioned ~ ~1.5 ~ rotated ~10 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 25 positioned ~ ~1.5 ~ rotated ~0 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 26 positioned ~ ~1.5 ~ rotated ~-10 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 27 positioned ~ ~1.5 ~ rotated ~-20 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 28 positioned ~ ~1.5 ~ rotated ~-30 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s RW.Tick matches 29 positioned ~ ~1.5 ~ rotated ~-40 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        # 放つ
            execute if score @s RW.Tick matches 30 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.shoot

# 構える
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/2.windup
    # 角度変えつつショット召喚(フェイズ2)
        execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 51 positioned ~ ~1.5 ~ rotated ~-35 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 52 positioned ~ ~1.5 ~ rotated ~-25 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 53 positioned ~ ~1.5 ~ rotated ~-15 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 54 positioned ~ ~1.5 ~ rotated ~-5 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 55 positioned ~ ~1.5 ~ rotated ~5 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 56 positioned ~ ~1.5 ~ rotated ~15 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 57 positioned ~ ~1.5 ~ rotated ~25 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 58 positioned ~ ~1.5 ~ rotated ~35 5 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
        # 放つ
            execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 59 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.shoot

# デバッグ用、技をループする
    #execute if score @s RW.Tick matches 50 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s[scores={RW.Phase=1}] RW.Tick matches 70 run function asset:mob/1004.tultaria/tick/base_move/reset
    execute if score @s[scores={RW.Phase=2}] RW.Tick matches 90 run function asset:mob/1004.tultaria/tick/base_move/reset