#> asset:mob/0046.clock_of_despair/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0046.clock_of_despair/tick/1.trigger
#> private
# @private
    #declare score_holder $Count
    #declare score_holder $4tInterval

# スコアを増やす
    scoreboard players add @s 1A.Time 1
    scoreboard players add @s 1A.LifeTime 1

# その後発動するスキル
# プレイヤーが周囲にいたらスキル選択
    execute if score @s 1A.Time matches 0 if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0046.clock_of_despair/tick/3.skill_select

# プレイヤーが周囲にいないのに時間がきてしまった場合。スコアを戻す。なんならもう生存時間もリセットする
    execute if score @s 1A.Time matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s 1A.LifeTime -1
    execute if score @s 1A.Time matches 0 unless entity @p[gamemode=!spectator,distance=..100] run scoreboard players set @s 1A.Time -1

# 選択したスキル発動
    execute if score @s 1A.Time matches 0.. run function asset:mob/0046.clock_of_despair/tick/4.skill_active


# 15tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $4tInterval Temporary = @s 1A.LifeTime
# 15tickおきに実行
    scoreboard players operation $4tInterval Temporary %= $15 Const
    execute if score $4tInterval Temporary matches 0 run function asset:mob/0046.clock_of_despair/tick/interval
# リセット
    scoreboard players reset $4tInterval

# もしアマスタがどっかいってしまったら(tpの関係でatが無いと死ぬ)
    execute at @s unless entity @e[type=armor_stand,tag=1A.ClockHand,distance=..0.01] run function asset:mob/0046.clock_of_despair/tick/armorstand_respawn