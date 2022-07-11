#> asset:mob/0216.gray_guardian/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0216.gray_guardian/tick/1.trigger
#> private
# @private
    #declare score_holder $Count

# スコアを増やす
    scoreboard players add @s 60.Tick 1

# 壁に埋まっていたらテレポートさせる
    execute if entity @p[gamemode=!spectator,distance=..100] if score @s 60.Tick matches -15 unless block ~ ~ ~ #lib:no_collision run function asset:mob/0216.gray_guardian/tick/move/spread

# プレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s 60.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s 60.Tick -60

# プレイヤーを見る
    execute if score @s 60.Tick matches 0 at @s facing entity @p eyes run function asset:mob/0216.gray_guardian/tick/move/teleport

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s 60.Tick matches 0 run function asset:mob/0216.gray_guardian/tick/3.skill_select

# 選択したスキル発動
    execute if score @s 60.Tick matches 0.. run function asset:mob/0216.gray_guardian/tick/4.skill_active


# 以下エラー時の処理
# もし同一座標に2体存在した場合瞬時にteleportする
    # 数のカウント
        execute store result score $Count Temporary run execute if entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.1]
    # もしいたらテレポ
        execute if score $Count Temporary matches 2.. run function asset:mob/0216.gray_guardian/tick/move/spread
    # スコアも一応戻す
        execute if score $Count Temporary matches 2.. run scoreboard players reset @s 60.Tick
    # リセット
        scoreboard players reset $Count

# もしアマスタがどっかいってしまったら(tpの関係でatが無いと死ぬ)
    execute at @s unless entity @e[type=armor_stand,tag=60.ArmorStand,distance=..0.01] run function asset:mob/0216.gray_guardian/tick/armorstand_respawn

