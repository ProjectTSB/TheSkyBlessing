#> asset:mob/1004.tultaria/tick/skill/5.ball_attack/1.tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

#
    #execute if score @s RW.Tick matches 0 at @p run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/random_teleport

# 最初に実行する
    execute if score @s RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/2.windup

# 放つまではこっち向く
    execute if score @s RW.Tick matches 10..25 facing entity @p feet run tp @s ~ ~ ~ ~ ~
    execute if score @s RW.Tick matches 10..25 facing entity @p feet as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# 弾を放つ。フェイズによって撃つ数が変わる
    execute if score @s RW.Tick matches 29 positioned ^20 ^ ^5 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 31 positioned ^5 ^ ^5 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 33 positioned ^ ^ ^5 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 35 positioned ^-5 ^ ^5 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s RW.Tick matches 37 positioned ^-20 ^ ^5 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
#
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 25 positioned ^ ^ ^10 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 25 positioned ^2 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 25 positioned ^-2 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 25 positioned ^2 ^ ^ run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 25 positioned ^-2 ^ ^ run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon

    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 30 positioned ^ ^ ^10 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 30 positioned ^2 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 30 positioned ^-2 ^ ^2 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 30 positioned ^2 ^ ^ run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon
    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 30 positioned ^-2 ^ ^ run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/5.summon

# サウンド
    #execute if score @s RW.Tick matches 30 positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/6.sound
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 25 positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/6.sound
    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 30 positioned ~ ~1 ~ positioned ^ ^ ^2 run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/6.sound

# 待機アニメを再生
    execute if score @s RW.Tick matches 55 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/play

# デバッグ用、この行動をループする
    #execute if score @s RW.Tick matches 60 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 70 run function asset:mob/1004.tultaria/tick/base_move/reset