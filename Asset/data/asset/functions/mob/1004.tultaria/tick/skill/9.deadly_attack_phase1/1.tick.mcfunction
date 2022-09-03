#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick
#
# 必殺その1
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active


# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/2.windup

# チャージ
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/3.charge

# 発動開始
    execute if score @s RW.Tick matches 80 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/4.start_attack

# 発動中
    execute if score @s RW.Tick matches 80..200 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/5.shoot_tick

# 無敵解除
    execute if score @s RW.Tick matches 200 run data modify entity @s Invulnerable set value 0b

# デバッグ用、技をループする
    execute if score @s RW.Tick matches 350 run scoreboard players set @s RW.Tick -10

# リセット
    #execute if score @s RW.Tick matches 200.. run function asset:mob/1004.tultaria/tick/reset
