#> asset:mob/1004.tultaria/tick/skill/1.melee_attack/1.tick
#
# 近接攻撃する際にうごくの
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/2.windup

# ダッシュで突っ込んでくる
    execute if score @s RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/3.dash

# 前方にプレイヤーがいたら振り抜く
    execute if score @s RW.Tick matches 10..29 positioned ^ ^ ^1 if entity @p[distance=..3] run scoreboard players set @s RW.Tick 30

# 攻撃
    execute if score @s RW.Tick matches 30 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/4.slash

# 神なので斬撃はすごい量が出る
    execute if score @s RW.Tick matches 32 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/5.slash2
    execute if score @s RW.Tick matches 34 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/6.slash3

# リセット
    execute if score @s[tag=!RW.HPless50per] RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/reset
    execute if score @s[tag=RW.HPless50per] RW.Tick matches 47 run function asset:mob/1004.tultaria/tick/reset