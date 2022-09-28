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
    execute if score @s RW.Tick matches 0..20 at @s run tp @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-75 ~
    execute if score @s RW.Tick matches 0..20 at @s run tp @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] ~ ~ ~ ~-50 ~

# 杖を振る動作
    execute if score @s RW.Tick matches 23 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/3.activate

# 弾を放つ。フェイズによって撃つ数が変わる
    execute if score @s RW.Tick matches 25 positioned ^ ^ ^10 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 25 positioned ^5 ^ ^10 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 25 positioned ^-5 ^ ^10 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 25 positioned ^10 ^ ^10 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 25 positioned ^-10 ^ ^10 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon

    #execute if score @s[tag=RW.Phase2] RW.Tick matches 31
    #execute if score @s[tag=RW.Phase2] RW.Tick matches 31
    #execute if score @s[tag=RW.Phase3] RW.Tick matches 33
    #execute if score @s[tag=RW.Phase3] RW.Tick matches 33

# サウンド
    execute if score @s RW.Tick matches 25 positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/6.sound

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 40 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/reset