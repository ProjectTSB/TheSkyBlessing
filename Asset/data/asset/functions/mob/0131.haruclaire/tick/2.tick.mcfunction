#> asset:mob/0131.haruclaire/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0131.haruclaire/tick/1.trigger

# スコアを増やす
    scoreboard players add @s 3N.Tick 1

# プレイヤーがいたら0tickでテレポート
    execute if score @s 3N.Tick matches 0 if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0131.haruclaire/tick/teleport

# その後発動するスキル
# プレイヤーがいたら
    execute if score @s 3N.Tick matches 0 if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0131.haruclaire/tick/2.1.skill_select

# プレイヤーがいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s 3N.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s 3N.Tick -40

# 発動中
    execute if score @s 3N.Tick matches 0.. run function asset:mob/0131.haruclaire/tick/2.2.skill_active

# 4tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $4tInterval Temporary = @s 3N.Tick
# 4tickおきに実行
    scoreboard players operation $4tInterval Temporary %= $4 Const
    execute if score $4tInterval Temporary matches 0 run function asset:mob/0131.haruclaire/tick/interval
# リセット
    scoreboard players reset $4tInterval


# 以下エラー時の処理
# もし同一座標に2体存在した場合瞬時にteleportする
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01]
    # もしいたらテレポ
        execute if score $Count Temporary matches 2.. run function asset:mob/0131.haruclaire/tick/teleport
    # スコアも一応戻す
        execute if score $Count Temporary matches 2.. run scoreboard players set @s 3N.Tick -20
    # リセット
        scoreboard players reset $Count

# もしアマスタがどっかいってしまったら(tpの関係でatが無いと死ぬ)
    execute at @s unless entity @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01] run function asset:mob/0131.haruclaire/tick/armorstand_respawn