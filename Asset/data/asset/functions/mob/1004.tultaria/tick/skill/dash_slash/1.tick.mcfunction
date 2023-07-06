#> asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick
#
# 突進斬り
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/dash_slash/2.windup

# ターゲッティング
    execute if score @s RW.Tick matches 12 run function asset:mob/1004.tultaria/tick/skill/dash_slash/targeting

# ダッシュで突っ込んでくる
    execute if score @s RW.Tick matches 22 run function asset:mob/1004.tultaria/tick/skill/dash_slash/3.dash

# 前方にプレイヤーがいたら振り抜く
    execute if score @s RW.Tick matches 22..32 positioned ^ ^ ^1 if entity @p[distance=..3] run scoreboard players set @s RW.Tick 32

# マーカーまでたどり着いたら移動をやめる
    execute if score @s RW.Tick matches 22..32 if entity @e[type=marker,tag=RW.TeleportMarker,distance=..3] at @s run scoreboard players set @s RW.Tick 35

# 埋まりそうになったら移動をやめる
    execute at @s if score @s RW.Tick matches 22..32 unless block ^ ^ ^2 #lib:no_collision run scoreboard players set @s RW.Tick 32

# 振り抜く
    execute if score @s RW.Tick matches 32 run function asset:mob/1004.tultaria/tick/skill/dash_slash/4.active
    execute if score @s RW.Tick matches 32 run function asset:mob/1004.tultaria/tick/skill/dash_slash/slash1
    execute if score @s RW.Tick matches 33 run function asset:mob/1004.tultaria/tick/skill/dash_slash/slash2
    execute if score @s RW.Tick matches 34 run function asset:mob/1004.tultaria/tick/skill/dash_slash/slash3
    execute if score @s RW.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/dash_slash/slash1
    execute if score @s RW.Tick matches 36 run function asset:mob/1004.tultaria/tick/skill/dash_slash/slash2

# 形態によっては、氷弾を追加で放つ
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 32 positioned ^3 ^ ^ run function asset:mob/1004.tultaria/tick/skill/dash_slash/shoot_ice_bullet
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 32 positioned ^-3 ^ ^ run function asset:mob/1004.tultaria/tick/skill/dash_slash/shoot_ice_bullet
    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 34 positioned ^3 ^ ^ run function asset:mob/1004.tultaria/tick/skill/dash_slash/shoot_ice_bullet
    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 34 positioned ^-3 ^ ^ run function asset:mob/1004.tultaria/tick/skill/dash_slash/shoot_ice_bullet
    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 36 positioned ^3 ^ ^ run function asset:mob/1004.tultaria/tick/skill/dash_slash/shoot_ice_bullet
    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 36 positioned ^-3 ^ ^ run function asset:mob/1004.tultaria/tick/skill/dash_slash/shoot_ice_bullet

# 斬撃が発生するぞ！
    execute if score @s RW.Tick matches 37 run function asset:mob/1004.tultaria/tick/skill/dash_slash/back_slash_start

# 遅れて斬撃が発生
    # 1個目
        execute if score @s RW.Tick matches 47..52 positioned ~ ~1 ~ run function asset:mob/1004.tultaria/tick/skill/dash_slash/5.delay_position

# リセット
    execute if score @s RW.Tick matches 100.. run function asset:mob/1004.tultaria/tick/base_move/reset