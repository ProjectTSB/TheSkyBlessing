#> asset:mob/1004.tultaria/tick/skill/lightning_stab/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active


# 雷撃マーカーへのコマンド
    execute at @e[type=marker,tag=RW.ChainLightning.Common] run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/marker

# 最初の構え
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/windup

# 構えずターゲッティング(最初に実行)
    execute if score @s[scores={RW.LoopCount=0}] RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/targeting_first

# 構えてターゲッティング(ループ以降から実行)
    execute if score @s[scores={RW.LoopCount=1..}] RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/targeting

# 突き
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/active
    # 突き部分のダメージ
        execute if score @s RW.Tick matches 21 positioned ^ ^ ^1 as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/1004.tultaria/tick/skill/lightning_stab/damage

# 何度か斬る
    execute if score @s[scores={RW.Phase=1}] RW.Tick matches 22 run scoreboard players set @s[scores={RW.LoopCount=..2}] RW.Tick 7
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 22 run scoreboard players set @s[scores={RW.LoopCount=..4}] RW.Tick 7

# 埋まりそうになったら移動をやめる
    execute at @s[scores={RW.Tick=21}] positioned ~ ~0.5 ~ unless block ^ ^ ^2 #lib:no_collision run function asset:mob/1004.tultaria/tick/skill/lightning_stab/stop

# 最後の一個を設置
    execute if score @s RW.Tick matches 25 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning.Last"]}

# 雷撃
    # 1
        execute if score @s RW.Tick matches 30 as @e[type=marker,tag=RW.ChainLightning.Common] at @s run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/active
    # 2
        execute if score @s RW.Tick matches 32 as @e[type=marker,tag=RW.ChainLightning.Common] at @s run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/active
    # 3
        execute if score @s RW.Tick matches 34 as @e[type=marker,tag=RW.ChainLightning.Common] at @s run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/active

# 最後に構えを解除
    execute if score @s RW.Tick matches 30 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/dash_stab_end/play

# 待機モーション再生
    #execute if score @s RW.Tick matches 50 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/play

# 雷撃を片付ける
    execute if score @s RW.Tick matches 36 run kill @e[type=marker,tag=RW.ChainLightning.Common,distance=..300]

# リセット
    execute if score @s RW.Tick matches 60.. run function asset:mob/1004.tultaria/tick/base_move/reset