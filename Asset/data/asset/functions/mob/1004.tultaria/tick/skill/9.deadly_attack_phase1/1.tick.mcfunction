#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick
#
# 必殺その1
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 実行時間を移す
    scoreboard players operation $AreaInterval Temporary = @s RW.Tick

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/2.windup

# チャージ後以降からは危険地帯になる
    execute if score @s RW.Tick matches 20..300 run scoreboard players operation $AreaInterval Temporary %= $2 Const
    execute if score @s RW.Tick matches 20..300 run execute if score $AreaInterval Temporary matches 0 rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/7.danger_field

# チャージ
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/3.charge

# 発動開始
    execute if score @s RW.Tick matches 80 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/4.start_attack

# 発動中
    execute if score @s RW.Tick matches 80..200 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/5.shoot_tick

# 終了時動作
    execute if score @s RW.Tick matches 320 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/8.end

# デバッグ用、技をループする
    execute if score @s RW.Tick matches 350 run scoreboard players set @s RW.Tick -10

# リセット
    #execute if score @s RW.Tick matches 200.. run function asset:mob/1004.tultaria/tick/reset
