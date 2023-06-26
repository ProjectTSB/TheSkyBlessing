#> asset:mob/1004.tultaria/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1004.tultaria/tick/1.trigger
#> private
# @private
    #declare score_holder $Count
    #declare score_holder $4tInterval

# スコアを増やす
    scoreboard players add @s RW.Tick 1

# テレポートさせる
    execute if entity @p[gamemode=!spectator,distance=..100] if score @s RW.Tick matches -15 run function asset:mob/1004.tultaria/tick/5.tereport

# プレイヤーを見る
    execute if score @s RW.Tick matches 0 at @s facing entity @p[distance=..100] eyes run function asset:mob/1004.tultaria/tick/move/tereport

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s RW.Tick matches 0 if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/1004.tultaria/tick/3.skill_select

# プレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s RW.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s RW.Tick -60

# 選択したスキル発動
    execute if score @s RW.Tick matches 0.. run function asset:mob/1004.tultaria/tick/4.skill_active


# 4tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $4tInterval Temporary = @s RW.Tick
# 4tickおきに実行
    scoreboard players operation $4tInterval Temporary %= $4 Const
    execute if score $4tInterval Temporary matches 0 run function asset:mob/1004.tultaria/tick/interval
# リセット
    scoreboard players reset $4tInterval

# HP減少時、パーティクルをまとう
    execute if entity @s[tag=RW.HPless75per] run particle smoke ~ ~0.7 ~ 0.3 0.5 0.3 0 3
    execute if entity @s[tag=RW.HPless50per] run particle end_rod ~ ~0.7 ~ 0.3 0.5 0.3 0 1

# 以下エラー時の処理
# もし同一座標に2体存在した場合瞬時にteleportする
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01]
    # もしいたらテレポ
        execute if score $Count Temporary matches 2.. run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
        execute if score $Count Temporary matches 2.. run function asset:mob/1004.tultaria/tick/move/spread
    # スコアも一応戻す
        execute if score $Count Temporary matches 2.. run scoreboard players reset @s RW.Tick
    # リセット
        scoreboard players reset $Count

# もしアマスタがどっかいってしまったら(tpの関係でatが無いと死ぬ)
    execute at @s unless entity @e[type=armor_stand,tag=RW.ArmorStand,distance=..0.01] run function asset:mob/1004.tultaria/tick/armorstand_respawn