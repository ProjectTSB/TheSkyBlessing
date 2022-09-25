#> asset:mob/1004.tultaria/tick/skill/phase3/1.chase_and_shot/1.tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

#> private
# @private
    #declare score_holder $ShotInterval

# こっち向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~

# モデルもこっちむく
    execute if score @s RW.Tick matches 1..15 run function asset:mob/1004.tultaria/tick/skill/phase3/1.chase_and_shot/3.windup

# 設置
    execute if score @s RW.Tick matches 1 run function asset:mob/1004.tultaria/tick/skill/phase3/1.chase_and_shot/2.place_marker

# マーカーをプレイヤーに追従させ、自身はそれを追う
    execute as @e[type=marker,tag=RW.ChaseMarker1,sort=nearest,limit=1] at @p run tp @s ~7 ~ ~
    execute as @e[type=marker,tag=RW.ChaseMarker2,sort=nearest,limit=1] at @p run tp @s ~-7 ~ ~
    execute as @e[type=marker,tag=RW.ChaseMarker3,sort=nearest,limit=1] at @p run tp @s ~ ~ ~7
    execute as @e[type=marker,tag=RW.ChaseMarker4,sort=nearest,limit=1] at @p run tp @s ~ ~ ~-7
    execute if score @s RW.Tick matches ..20 facing entity @e[type=marker,tag=RW.ChaseMarker,distance=2..,sort=nearest,limit=1] feet positioned ^ ^ ^0.5 run function asset:mob/1004.tultaria/tick/move/tereport_no_facing

# 滑る
    execute if entity @e[type=marker,tag=RW.ChaseMarker,distance=1..2,sort=nearest,limit=1] unless score @s RW.FakeInertia matches 0.. run scoreboard players set @s RW.FakeInertia 8

# 数Tickごとに射撃
    execute if score @s RW.Tick matches 15 run function asset:mob/1004.tultaria/tick/skill/phase3/1.chase_and_shot/4.shoot

# ループする
    execute if score @s RW.Tick matches 20 run scoreboard players set @s[scores={RW.LoopCount=..4}] RW.Tick 10

# 嘘慣性
    # 下が空気なら通常実行
        execute facing entity @e[type=marker,tag=RW.ChaseMarker,sort=nearest,limit=1] feet if entity @s[scores={RW.FakeInertia=0..}] if block ~ ~-1 ~ #lib:no_collision run function asset:mob/1004.tultaria/tick/wait_time/base_move/fake_inertia
    # 下が空気じゃないなら縦軸を無視
        execute facing entity @e[type=marker,tag=RW.ChaseMarker,sort=nearest,limit=1] feet if entity @s[scores={RW.FakeInertia=0..}] unless block ~ ~-1 ~ #lib:no_collision rotated ~ 0 run function asset:mob/1004.tultaria/tick/wait_time/base_move/fake_inertia

# 小技出しましたのタグを付与
    execute if score @s RW.Tick matches 40 run tag @s add RW.MiniSkillUsed

# リセット
    execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/reset
