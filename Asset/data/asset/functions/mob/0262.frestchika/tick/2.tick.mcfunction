#> asset:mob/0262.frestchika/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0262.frestchika/tick/1.trigger
#> private
# @private
    #declare score_holder $Count
    #declare score_holder $4tInterval

# オーバーヒートしていない限り常時耐性4がつく
    effect give @s[tag=!7A.SkillOverHeat] resistance 1 3 true

# スコアを増やす
    scoreboard players add @s 7A.Tick 1

# プレイヤーを見る
    execute if score @s 7A.Tick matches 0 at @s facing entity @p feet run function asset:mob/0262.frestchika/tick/move/teleport

# プレイヤーが周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s 7A.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s 7A.Tick -5

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s 7A.Tick matches 0 run function asset:mob/0262.frestchika/tick/3.skill_select



# 選択したスキル発動
    execute if score @s 7A.Tick matches 0.. run function asset:mob/0262.frestchika/tick/4.skill_active

# 以下エラー時の処理
# もし同一座標に2体存在した場合瞬時にteleportする
    # 数のカウント
        execute store result score $Count Temporary if entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01]
    # もしいたらテレポ
        execute if score $Count Temporary matches 2.. run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
        execute if score $Count Temporary matches 2.. run function asset:mob/0262.frestchika/tick/move/spread
    # スコアも一応戻す
        execute if score $Count Temporary matches 2.. run scoreboard players reset @s 7A.Tick
    # リセット
        scoreboard players reset $Count

# もしアマスタがどっかいってしまったら(tpの関係でatが無いと死ぬ)
    execute at @s unless entity @e[type=armor_stand,tag=7A.ArmorStand,distance=..0.01] run function asset:mob/0262.frestchika/tick/armorstand_respawn