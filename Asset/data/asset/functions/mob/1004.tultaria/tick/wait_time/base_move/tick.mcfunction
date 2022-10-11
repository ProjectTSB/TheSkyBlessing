#> asset:mob/1004.tultaria/tick/wait_time/base_move/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# こっち向く
    execute if entity @s[tag=!RW.InAction] unless entity @s[scores={RW.FakeInertia=0..}] facing entity @p feet run tp @s ~ ~ ~ ~ ~

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!RW.InAction,scores={RW.Phase=1..2}] RW.Tick matches 40.. if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/1004.tultaria/tick/3.skill_select

# ミニスキル使った後に技発動(フェイズ3)
    execute if score @s[tag=RW.MiniSkillUsed,tag=!RW.InAction,scores={RW.Phase=2..}] RW.Tick matches 40.. if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/1004.tultaria/tick/3.skill_select

# プレイヤーが周囲にいないのに時間がきてしまった場合。スコアを戻す
    execute if score @s RW.Tick matches 40.. unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s RW.Tick 0

# フェイズ2以降、設置攻撃してくる
    execute if score @s[tag=!RW.InAction,scores={RW.Phase=2..}] RW.Tick matches 10..15 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/1.tick

# フェイズ3以降、行動選択前にランダムな行動してくる
    execute if score @s[tag=!RW.MiniSkillUsed,tag=!RW.InAction,scores={RW.Phase=3..}] RW.Tick matches 20.. run function asset:mob/1004.tultaria/tick/skill/phase3/1.select

# 選択したスキル発動
    execute if entity @s[tag=RW.InAction] run function asset:mob/1004.tultaria/tick/4.skill_active

# モデルの向き
    # 頭がプレイヤーの方を向く
        execute if entity @s[tag=!RW.InAction] as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5] facing entity @p feet run tp @s ~ ~ ~ ~ ~
    # リミット
        execute if entity @s[tag=!RW.InAction] as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5] facing entity @p feet if entity @s[x_rotation=34..90] run tp @s ~ ~ ~ ~ 35
        execute if entity @s[tag=!RW.InAction] as @e[type=armor_stand,tag=RW.ModelHead,tag=RW.ModelChangeTarget,distance=..0.5] facing entity @p feet if entity @s[x_rotation=-90..-24] run tp @s ~ ~ ~ ~ -25
    # 頭のモデルのデータに移す
        execute if entity @s[tag=!RW.InAction] as @e[type=armor_stand,tag=RW.ModelHead,distance=..2] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

    # 体
        execute if entity @s[tag=!RW.InAction] as @e[type=armor_stand,tag=RW.ModelBody,tag=RW.ModelChangeTarget,distance=..0.5] facing entity @p eyes run tp @s ~ ~ ~ ~-35 ~

# 移動タグ付きなら移動
    execute if entity @s[tag=RW.Move] run function asset:mob/1004.tultaria/tick/move/teleport/move_to_marker

# 嘘慣性
    # 下が空気なら通常実行
        execute if entity @s[tag=!RW.ChaseShot,scores={RW.FakeInertia=0..}] if block ~ ~-1 ~ #lib:no_collision run function asset:mob/1004.tultaria/tick/wait_time/base_move/fake_inertia
    # 下が空気じゃないなら縦軸を無視
        execute if entity @s[tag=!RW.ChaseShot,scores={RW.FakeInertia=0..}] unless block ~ ~-1 ~ #lib:no_collision rotated ~ 0 run function asset:mob/1004.tultaria/tick/wait_time/base_move/fake_inertia
