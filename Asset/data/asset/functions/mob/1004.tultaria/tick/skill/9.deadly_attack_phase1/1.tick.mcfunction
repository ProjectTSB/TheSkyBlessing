#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick
#
# 必殺その1
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 実行時間を移す
    scoreboard players operation $AreaInterval Temporary = @s RW.Tick

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/2.windup

# 剣を突き立てる
    data modify storage api: Argument.ID set value 1015
    execute if score @s RW.Tick matches 21 rotated 0 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 22 rotated 22.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 23 rotated 45 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 24 rotated 67.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 25 rotated 90 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 26 rotated 112.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 27 rotated 135 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 28 rotated 157.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 29 rotated 180 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 30 rotated 202.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 31 rotated 225 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 32 rotated 247.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 33 rotated 270 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 34 rotated 292.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 35 rotated 315 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 36 rotated 337.5 0 positioned ^ ^5 ^10 run function api:mob/summon

# チャージ後以降からは危険地帯になる
    execute if score @s RW.Tick matches 20..320 run scoreboard players operation $AreaInterval Temporary %= $3 Const
    execute if score @s RW.Tick matches 20..320 if score $AreaInterval Temporary matches 0 rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/7.danger_field

# チャージ
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/3.charge

# 発動開始
    execute if score @s RW.Tick matches 80 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/4.start_attack

# 発動中
    execute if score @s RW.Tick matches 80..200 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/5.shoot_tick

# 終了時動作
    execute if score @s RW.Tick matches 320 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/9.end

# デバッグ用、技をループする
    execute if score @s RW.Tick matches 350 run scoreboard players set @s RW.Tick -10

# スコアリセット
    scoreboard players reset $ShotInterval Temporary
    scoreboard players reset $AreaInterval Temporary
