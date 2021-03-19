#> asset:sacred_treasure/0152.call_cat/3.1.entity_manager
#
# ネコがいるときに毎tick実行 仲間の回復とネコのさようならを管理する
#
# @within function
#   asset:sacred_treasure/0152.call_cat/3.main
#   asset:sacred_treasure/0152.call_cat/3.1.entity_manager

# ネコの勤務時間とプレーヤー回復クールダウン加算
    scoreboard players add @e[type=cat,tag=2o.CalledCat] 2o.CatTime 1
    scoreboard players add @a[scores={2o.CatTime=..20}] 2o.CatTime 1

# 近くにプレイヤーが居たら回復
    execute at @e[type=cat,tag=2o.CalledCat] if entity @a[gamemode=!spectator,scores={2o.CatTime=21},distance=..2.5,limit=1] as @a[gamemode=!spectator,scores={2o.CatTime=21},distance=..2.5] run function asset:sacred_treasure/0152.call_cat/3.1.1.heal

# 1回以上回復したプレーヤーのクールダウンを設定
    execute if entity @a[scores={2o.CatTime=22..}] run scoreboard players set @a[scores={2o.CatTime=22..}] 2o.CatTime 0

# ネコのCatTimeが600以上（勤務時間30秒経過）になったらさようなら
    execute if entity @e[type=cat,tag=2o.CalledCat,scores={2o.CatTime=600..},limit=1] as @e[type=cat,tag=2o.CalledCat,scores={2o.CatTime=600..}] at @s run function asset:sacred_treasure/0152.call_cat/3.1.2.goodbye_cat

# ネコがいるなら次tick予約
    execute if entity @e[type=cat,tag=2o.CalledCat,limit=1] run schedule function asset:sacred_treasure/0152.call_cat/3.1.entity_manager 1t replace