#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick
#
# 必殺その1
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/skill_active
#   asset:mob/1004.tultaria/tick/wait_time/phase2_transition/1.tick

# 実行時間を移す
    scoreboard players operation $AreaInterval Temporary = @s RW.Tick

# 構える
    execute if score @s RW.Tick matches 30 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/move_to_center

# 元のポーズに戻って少し待つ
    #execute if score @s RW.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/2.wait_pose

# 召喚位置を中心として、剣を突き立てる
    data modify storage api: Argument.ID set value 1015
    execute if score @s RW.Tick matches 61 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 0 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 62 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 22.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 63 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 45 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 64 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 67.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 65 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 90 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 66 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 112.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 67 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 135 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 68 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 157.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 69 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 180 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 70 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 202.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 71 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 225 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 72 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 247.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 73 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 270 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 74 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 292.5 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 75 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 315 0 positioned ^ ^5 ^10 run function api:mob/summon
    execute if score @s RW.Tick matches 76 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 337.5 0 positioned ^ ^5 ^10 run function api:mob/summon

# チャージ後以降からは危険地帯になる
    execute if score @s RW.Tick matches 60..340 run scoreboard players operation $AreaInterval Temporary %= $3 Const
    execute if score @s RW.Tick matches 60..340 if score $AreaInterval Temporary matches 0 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/sword_wall/damage_field

# チャージ
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/pull_player

# 技前の構え
    execute if score @s RW.Tick matches 95 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/windup

# 発動開始
    execute if score @s RW.Tick matches 120 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/start_attack

# 必殺技のモーションをスタート
    execute if score @s RW.Tick matches 145 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/stop_windup

# 弾を発射
    execute if score @s RW.Tick matches 120..240 at @e[type=marker,tag=RW.BodyMarker,distance=..5,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/shoot_tick

# 構えを戻す
    execute if score @s RW.Tick matches 260 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/end_attack

# 画面白くする
    execute if score @s RW.Tick matches 320 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/quote
    # その裏でこっそり壁を破壊。一度に壊すには多すぎるので分ける
        #execute if score @s RW.Tick matches 325 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] run fill ~23 ~ ~23 ~-23 ~10 ~-23 air
        #execute if score @s RW.Tick matches 326 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] run fill ~23 ~10 ~23 ~-23 ~20 ~-23 air
        #execute if score @s RW.Tick matches 327 at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] run fill ~23 ~20 ~23 ~-23 ~31 ~-23 air

# 終了時動作
    execute if score @s RW.Tick matches 380 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/end

# デバッグ用、技をループする
    #execute if score @s RW.Tick matches 200.. run scoreboard players set @s RW.Tick -10

# スコアリセット
    scoreboard players reset $ShotInterval Temporary
    scoreboard players reset $AreaInterval Temporary

