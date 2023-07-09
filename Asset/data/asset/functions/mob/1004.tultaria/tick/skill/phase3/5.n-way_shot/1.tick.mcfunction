#> asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/1.tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# 構える
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/2.windup

# 放つ
    execute if score @s RW.Tick matches 30 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/4.shoot

# 構える
    execute if score @s RW.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/2.windup

# 放つ
    execute if score @s RW.Tick matches 45 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/4.shoot

# 構える
    execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/2.windup

# 放つ
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/4.shoot

# デバッグ用、技をループする
    #execute if score @s RW.Tick matches 70 run scoreboard players set @s RW.Tick -10

# 小技出しましたのタグを付与
    execute if score @s RW.Tick matches 80 run tag @s add RW.MiniSkillUsed

# リセット
    execute if score @s RW.Tick matches 80 run function asset:mob/1004.tultaria/tick/base_move/reset