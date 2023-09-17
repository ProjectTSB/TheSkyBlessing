#> asset:mob/1004.tultaria/tick/base_move/
#
# ベース動作。他モブでいうTickに相当
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# こっち向く
    execute if entity @s[tag=!RW.InAction] unless entity @s[scores={RW.FakeInertia=0..}] facing entity @p feet run tp @s ~ ~ ~ ~ ~

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!RW.InAction,scores={RW.Phase=1..2}] RW.Tick matches 40.. if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/1004.tultaria/tick/base_move/skill_select

# ミニスキル使った後に技発動(フェイズ3)
    execute if score @s[tag=RW.MiniSkillUsed,tag=!RW.InAction,scores={RW.Phase=2..}] RW.Tick matches 40.. if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/1004.tultaria/tick/base_move/skill_select

# プレイヤーが周囲にいないのに時間がきてしまった場合。スコアを戻す
    execute if score @s RW.Tick matches 40.. unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s RW.Tick 0

# フェイズ2以降の設置攻撃
    execute if score @s[tag=!RW.InAction,scores={RW.Phase=2..}] RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/main

# フェイズ3以降、行動選択前にランダムな行動してくる
    execute if score @s[tag=!RW.MiniSkillUsed,tag=!RW.InAction,scores={RW.Phase=3..}] RW.Tick matches 20.. run function asset:mob/1004.tultaria/tick/skill/phase3/1.select

# 選択したスキル発動
    execute if entity @s[tag=RW.InAction] run function asset:mob/1004.tultaria/tick/base_move/skill_active

# 移動タグ付きなら移動
    execute if entity @s[tag=RW.Move] run function asset:mob/1004.tultaria/tick/move/teleport/move_to_marker

# リセットからの復帰時に待機アニメを再生
    execute if score @s RW.Tick matches -1 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/play

#
    #execute if score @s RW.Tick matches 0.. facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s rotated ~90 ~ run tp @s ^ ^ ^0.1 ~ ~


## 嘘慣性
    # 下が空気なら通常実行
        execute if entity @s[tag=!RW.DisableInertia,scores={RW.FakeInertia=0..}] if block ~ ~-1 ~ #lib:no_collision run function asset:mob/1004.tultaria/tick/base_move/fake_inertia
    # 下が空気じゃないなら縦軸を無視
        execute if entity @s[tag=!RW.DisableInertia,scores={RW.FakeInertia=0..}] unless block ~ ~-1 ~ #lib:no_collision rotated ~ 0 run function asset:mob/1004.tultaria/tick/base_move/fake_inertia