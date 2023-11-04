#> asset:mob/1004.tultaria/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1004.tultaria/tick/1.trigger
#> private
# @private
    #declare score_holder $Count
    #declare score_holder $4tInterval

# スコア加算
    scoreboard players add @s[tag=!RW.TickLock] RW.Tick 1

# 最寄りのモデルのRootを自身の座標にもってくる
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~

# モデルをプレイヤーに向ける
    execute if entity @s[tag=!RW.InAction] as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# 開幕
    execute if entity @s[tag=RW.Opening] run function asset:mob/1004.tultaria/tick/wait_time/opening/tick

# ベース動作
    execute if entity @s[tag=!RW.Opening] run function asset:mob/1004.tultaria/tick/base_move/

# フェーズ2移行動作
    execute if entity @s[tag=RW.SkillDeadly1] run function asset:mob/1004.tultaria/tick/wait_time/phase2_transition/1.tick

# フェーズ3移行動作
    execute if entity @s[tag=RW.SkillDeadly2] run function asset:mob/1004.tultaria/tick/wait_time/phase3_transition/1.tick

## HP減少時、パーティクルをまとう
#    execute if entity @s[tag=RW.HPless75per] run particle smoke ~ ~0.7 ~ 0.3 0.5 0.3 0 3
#    execute if entity @s[tag=RW.HPless50per] run particle end_rod ~ ~0.7 ~ 0.3 0.5 0.3 0 1
#
## 以下エラー時の処理
## もし同一座標に2体存在した場合瞬時にteleportする
#    # 数のカウント
#        execute store result score $Count Temporary if entity @e[type=armor_stand,tag=RW.Model,distance=..0.01]
#    # もしいたらテレポ
#        execute if score $Count Temporary matches 2.. run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
#        execute if score $Count Temporary matches 2.. run function asset:mob/1004.tultaria/tick/move/spread
#    # スコアも一応戻す
#        execute if score $Count Temporary matches 2.. run scoreboard players reset @s RW.Tick
#    # リセット
#        scoreboard players reset $Count

# もしアマスタがどっかいってしまったら(tpの関係でatが無いと死ぬ)
    #execute at @s unless entity @e[type=armor_stand,tag=RW.Model,distance=..0.01] run function asset:mob/1004.tultaria/tick/armorstand_respawn