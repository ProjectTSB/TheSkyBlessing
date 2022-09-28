#> asset:mob/1004.tultaria/tick/skill/5.ball_attack/1.tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active


# 最初に実行する
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/2.windup

# 放つまではこっち向く
    execute if score @s RW.Tick matches 0..25 facing entity @p feet run tp @s ~ ~ ~ ~ ~

# 体、頭の向き
    execute if score @s RW.Tick matches 0..20 at @s run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~45 ~
    execute if score @s RW.Tick matches 0..20 at @s run tp @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~20 ~

# 杖を振る動作
    execute if score @s RW.Tick matches 24 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/3.activate
    execute if score @s RW.Tick matches 28 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/4.activate2

# 弾を放つ。フェイズによって撃つ数が変わる
    execute if score @s RW.Tick matches 27 positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 29 positioned ~ ~1 ~ positioned ^1 ^ ^1 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 29 positioned ~ ~1 ~ positioned ^-1 ^ ^1 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 31 positioned ~ ~1 ~ positioned ^4 ^ ^4 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 31 positioned ~ ~1 ~ positioned ^-4 ^ ^4 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 33 positioned ~ ~1 ~ positioned ^8 ^ ^-2 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 33 positioned ~ ~1 ~ positioned ^-8 ^ ^-2 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon

    #execute if score @s[tag=RW.Phase2] RW.Tick matches 31
    #execute if score @s[tag=RW.Phase2] RW.Tick matches 31
    #execute if score @s[tag=RW.Phase3] RW.Tick matches 33
    #execute if score @s[tag=RW.Phase3] RW.Tick matches 33

# リセット
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/reset