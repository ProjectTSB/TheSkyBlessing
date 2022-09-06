#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick
#
# 必殺その1
#
# @within function
#   asset:mob/1004.tultaria/tick/4.skill_active
#   asset:mob/1004.tultaria/tick/wait_time/phase2_transition/1.tick

# 実行時間を移す
    scoreboard players operation $AreaInterval Temporary = @s RW.Tick

# 構える
    execute if score @s RW.Tick matches 30 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/2.windup

# 元のポーズに戻って少し待つ
    execute if score @s RW.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/2.wait_pose


# 剣を突き立てる
    data modify storage api: Argument.ID set value 1015
    execute if score @s RW.Tick matches 61 rotated 0 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 62 rotated 22.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 63 rotated 45 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 64 rotated 67.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 65 rotated 90 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 66 rotated 112.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 67 rotated 135 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 68 rotated 157.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 69 rotated 180 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 70 rotated 202.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 71 rotated 225 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 72 rotated 247.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 73 rotated 270 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 74 rotated 292.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 75 rotated 315 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 76 rotated 337.5 0 positioned ^ ^5 ^10 run function api:mob/summon

# チャージ後以降からは危険地帯になる
    execute if score @s RW.Tick matches 60..340 run scoreboard players operation $AreaInterval Temporary %= $3 Const
    execute if score @s RW.Tick matches 60..340 if score $AreaInterval Temporary matches 0 rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/7.danger_field

# チャージ
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/3.charge

# こっそり後ろに下がっておく
    execute if score @s RW.Tick matches 80..100 positioned ^ ^ ^-0.1 run function asset:mob/1004.tultaria/tick/move/tereport

# 発動開始
    execute if score @s RW.Tick matches 120 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/4.start_attack

# 弾を発射
    execute if score @s RW.Tick matches 120..240 at @e[type=marker,tag=RW.BodyMarker,distance=..5,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/5.shoot_tick

# 終了時動作
    execute if score @s RW.Tick matches 340 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/9.end

# デバッグ用、技をループする
    #execute if score @s RW.Tick matches 200.. run scoreboard players set @s RW.Tick -10

# スコアリセット
    scoreboard players reset $ShotInterval Temporary
    scoreboard players reset $AreaInterval Temporary
