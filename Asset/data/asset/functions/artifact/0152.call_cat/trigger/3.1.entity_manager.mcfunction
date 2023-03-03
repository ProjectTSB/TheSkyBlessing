#> asset:artifact/0152.call_cat/trigger/3.1.entity_manager
#
# ネコがいるときに毎tick実行 仲間の回復とネコのさようならを管理する
#
# @within function
#   asset:artifact/0152.call_cat/trigger/3.main
#   asset:artifact/0152.call_cat/trigger/3.1.entity_manager

# ネコの勤務時間とプレーヤー回復クールダウン加算
    scoreboard players add @e[type=cat,tag=48.CalledCat] 48.CatTime 1
    scoreboard players add @a[scores={48.CatTime=..20}] 48.CatTime 1

# 近くにプレイヤーが居たら回復
    execute at @e[type=cat,tag=48.CalledCat] if entity @a[gamemode=!spectator,scores={48.CatTime=21},distance=..2.5,limit=1] as @a[gamemode=!spectator,scores={48.CatTime=21},distance=..2.5] run function asset:artifact/0152.call_cat/trigger/3.1.1.heal

# 1回以上回復したプレーヤーのクールダウンを設定
    execute if entity @a[scores={48.CatTime=22..}] run scoreboard players set @a[scores={48.CatTime=22..}] 48.CatTime 0

# ネコのCatTimeが600以上（勤務時間30秒経過）になったらさようなら
    execute if entity @e[type=cat,tag=48.CalledCat,scores={48.CatTime=600..},limit=1] as @e[type=cat,tag=48.CalledCat,scores={48.CatTime=600..}] at @s run function asset:artifact/0152.call_cat/trigger/3.1.2.goodbye_cat

# ネコがいるなら次tick予約
    execute if entity @e[type=cat,tag=48.CalledCat,limit=1] run schedule function asset:artifact/0152.call_cat/trigger/3.1.entity_manager 1t replace