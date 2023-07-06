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

# 召喚位置を中心として、剣を突き立てる
    data modify storage api: Argument.ID set value 1015
    execute if score @s RW.Tick matches 101 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 0 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 102 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 22.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 103 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 45 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 104 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 67.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 105 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 90 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 106 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 112.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 107 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 135 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 108 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 157.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 109 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 180 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 110 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 202.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 111 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 225 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 112 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 247.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 113 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 270 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 114 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 292.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 115 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 315 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 116 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 337.5 0 positioned ^ ^5 ^10 run function api:mob/summon

# 剣が落ちてきた瞬間から、範囲外には出れなくなる
    execute if score @s RW.Tick matches 100.. run scoreboard players operation $AreaInterval Temporary %= $3 Const
    execute if score @s RW.Tick matches 100.. if score $AreaInterval Temporary matches 0 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/sword_wall/damage_field

# 一旦やめて、その後再開
    execute if score @s RW.Tick matches 300 run tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> あの神々に言われるがままの、あなたには…","color":"white"}]
    execute if score @s RW.Tick matches 340 run tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> 何も、わからないでしょうね。","color":"white"}]

# チャージ
    execute if score @s RW.Tick matches 100 run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/4.charge

# 発動開始
    execute if score @s RW.Tick matches 160 run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/5.start_attack

# 発動すると周りが暗くなる
    execute if score @s RW.Tick matches 160.. run effect give @a[distance=..50] darkness 1 0 true

# 弾を発射
    # 数tickごとに放つ
        scoreboard players operation $ShotInterval Temporary %= $4 Const
        execute if score @s RW.Tick matches 160..260 if score $ShotInterval Temporary matches 0 run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/6.bullethell_tick
    # 数tickごとに放つ(セリフ挟んだ以降、弾が増える)
        execute if score @s RW.Tick matches 360..560 if score $ShotInterval Temporary matches 0 run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/6.bullethell_tick_enrage

# 終了時動作
    execute if score @s RW.Tick matches 600 run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/end

# デバッグ用、技をループする
    #execute if score @s RW.Tick matches 600.. run scoreboard players set @s RW.Tick 70
