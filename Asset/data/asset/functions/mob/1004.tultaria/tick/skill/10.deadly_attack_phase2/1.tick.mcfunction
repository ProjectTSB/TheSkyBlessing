#> asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/1.tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/wait_time/phase3_transition/1.tick

#> private
# @private
    #declare score_holder $ShotInterval
    #declare score_holder $AreaInterval

# 実行時間を移す
    scoreboard players operation $ShotInterval Temporary = @s RW.Tick
    scoreboard players operation $AreaInterval Temporary = @s RW.Tick

# 構える
    execute if score @s RW.Tick matches 70 run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/2.windup

# 元のポーズに戻って少し待つ
    execute if score @s RW.Tick matches 75 run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/3.wait_pose

# 剣を突き立てる
    data modify storage api: Argument.ID set value 1015
    execute if score @s RW.Tick matches 101 rotated 0 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 102 rotated 22.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 103 rotated 45 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 104 rotated 67.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 105 rotated 90 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 106 rotated 112.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 107 rotated 135 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 108 rotated 157.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 109 rotated 180 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 110 rotated 202.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 111 rotated 225 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 112 rotated 247.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 113 rotated 270 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 114 rotated 292.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 115 rotated 315 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 116 rotated 337.5 0 positioned ^ ^5 ^10 run function api:mob/summon

# チャージ後以降からは暗闇がやってきて、しかも安全地帯が狭い
    execute if score @s RW.Tick matches 100.. run effect give @a[distance=..50] darkness 1 0 true
    execute if score @s RW.Tick matches 100..360 run scoreboard players operation $AreaInterval Temporary %= $3 Const
    execute if score @s RW.Tick matches 100..360 if score $AreaInterval Temporary matches 0 rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/7.danger_field

# チャージ
    execute if score @s RW.Tick matches 100 run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/4.charge

# 発動開始
    execute if score @s RW.Tick matches 160 run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/5.start_attack

# 弾を発射
    #execute if score @s RW.Tick matches 120..240 at @e[type=marker,tag=RW.BodyMarker,distance=..5,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/5.shoot_tick
    #execute if score @s RW.Tick matches 160..360 run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/6.bullethell_tick
    # 数tickごとに放つ
        scoreboard players operation $ShotInterval Temporary %= $4 Const
        execute if score @s RW.Tick matches 160..360 if score $ShotInterval Temporary matches 0 run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/6.bullethell_tick

# 終了時動作
    #execute if score @s RW.Tick matches 340 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/9.end

# 剣を消す
    execute if score @s RW.Tick matches 400.. run tag @e[type=armor_stand,scores={MobID=1015}] add S7.Death

# デバッグ用、技をループする
    execute if score @s RW.Tick matches 400.. run scoreboard players set @s RW.Tick 70
