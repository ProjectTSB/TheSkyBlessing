#> asset:mob/1004.tultaria/tick/wait_time/phase1/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!RW.InAction] RW.Tick matches 40.. if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/1004.tultaria/tick/3.skill_select

# プレイヤーが周囲にいないのに時間がきてしまった場合。スコアを戻す
    execute if score @s RW.Tick matches 40.. unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s RW.Tick 0

# 選択したスキル発動
    execute if entity @s[tag=RW.InAction] run function asset:mob/1004.tultaria/tick/4.skill_active

# こっち向く
    execute if entity @s[tag=!RW.InAction] unless entity @s[scores={RW.FakeInertia=0..}] facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# モデルの向き
    # 頭
        execute if entity @s[tag=!RW.InAction] as @e[type=armor_stand,tag=RW.ModelHead,distance=..2] facing entity @p feet run tp @s ~ ~ ~ ~ ~
        execute if entity @s[tag=!RW.InAction] as @e[type=armor_stand,tag=RW.ModelHead,distance=..2] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

    # 体
        execute if entity @s[tag=!RW.InAction] as @e[type=armor_stand,tag=RW.ModelBody,distance=..2] facing entity @p eyes run tp @s ~ ~ ~ ~-45 ~

# 移動タグ付きなら移動
    execute if entity @s[tag=RW.Move] run function asset:mob/1004.tultaria/tick/move/teleport/move_to_marker

# 嘘慣性
    # 下が空気なら通常実行
        execute if entity @s[scores={RW.FakeInertia=0..}] if block ~ ~-1 ~ #lib:no_collision run function asset:mob/1004.tultaria/tick/wait_time/phase1/fake_inertia
    # 下が空気じゃないなら縦軸を無視
        execute if entity @s[scores={RW.FakeInertia=0..}] unless block ~ ~-1 ~ #lib:no_collision rotated ~ 0 run function asset:mob/1004.tultaria/tick/wait_time/phase1/fake_inertia
