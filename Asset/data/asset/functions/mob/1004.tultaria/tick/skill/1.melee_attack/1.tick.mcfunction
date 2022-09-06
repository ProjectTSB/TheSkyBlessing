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
    execute if score @s RW.Tick matches 10..25 positioned ^ ^ ^1 if entity @p[distance=..3] run scoreboard players set @s RW.Tick 25

# 攻撃
    execute if score @s RW.Tick matches 25 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/4.slash

# 神なので斬撃はすごい量が出る
    execute if score @s RW.Tick matches 27 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/5.slash2
    execute if score @s RW.Tick matches 29 run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/6.slash3

# フェイズ2なら何度か斬る
    execute if score @s RW.Tick matches 40 run scoreboard players add @s[scores={RW.SlashAgain=..2}] RW.SlashAgain 1
    execute if score @s RW.Tick matches 40 run scoreboard players set @s[scores={RW.SlashAgain=..2}] RW.Tick -3

# リセット
    execute if score @s[tag=RW.Phase1] RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/reset
    execute if score @s[tag=RW.Phase2] RW.Tick matches 70 run function asset:mob/1004.tultaria/tick/reset