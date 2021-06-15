#> asset:sacred_treasure/0087.sheep_blessing/count_down
#
# カウントダウン処理
#
# @within function
#   asset:sacred_treasure/0087.sheep_blessing/3.main
#   asset:sacred_treasure/0087.sheep_blessing/count_down
#   asset:sacred_treasure/0087.sheep_blessing/rejoin_process
#> private
# @private
    #declare tag 2f.CanNotUse

# スコアボード加算
    scoreboard players add @a[scores={2f.TickCount=0..}] 2f.TickCount 1

# プレイヤーが移動などでゲームモードが変更された場合は羊毛の設置をしない
    tag @a[gamemode=!survival,gamemode=!creative,tag=!2f.CanNotUse,scores={2f.TickCount=0..}] add 2f.CanNotUse

# 15秒間羊毛置換
    execute at @a[tag=!2f.CanNotUse,scores={2f.TickCount=..300}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_wool keep

# 再起処理
    execute if entity @a[scores={2f.TickCount=..300}] run schedule function asset:sacred_treasure/0087.sheep_blessing/count_down 1t

# 演出
    execute at @a[scores={2f.TickCount=301}] run playsound entity.illusioner.prepare_mirror master @a[scores={2f.TickCount=301}] ~ ~ ~ 1.0 1.0

# 初期化処理
    tag @a[scores={2f.TickCount=301}] remove 2f.CanNotUse
    scoreboard players reset @a[scores={2f.TickCount=301}] 2f.TickCount