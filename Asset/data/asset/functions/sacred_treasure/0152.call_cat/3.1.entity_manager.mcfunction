#> asset:sacred_treasure/0152.call_cat/3.1.entity_manager
#
# ネコがいるときに毎tick実行 仲間の回復とネコのさようならを管理する
#
# @within function
#   asset:sacred_treasure/0152.call_cat/3.main
#   asset:sacred_treasure/0152.call_cat/3.1.entity_manager

# ネコの勤務時間とプレーヤー回復クールダウン加算
    scoreboard players add @e[type=cat,tag=152.CalledCat] 152.CatTime 1
    scoreboard players add @a[scores={152.CatTime=..20}] 152.CatTime 1

# 近くにプレイヤーが居たら回復
    execute at @e[type=cat,tag=152.CalledCat] if entity @a[gamemode=!spectator,scores={152.CatTime=21},distance=..2.5,limit=1] as @a[gamemode=!spectator,scores={152.CatTime=21},distance=..2.5] run function asset:sacred_treasure/0152.call_cat/3.1.1.heal

# ネコのCatTimeが600以上（勤務時間30秒経過）になったらさようなら
    execute if entity @e[type=cat,tag=152.CalledCat,scores={152.CatTime=600..},limit=1] as @e[type=cat,tag=152.CalledCat,scores={152.CatTime=600..}] at @s run function asset:sacred_treasure/0152.call_cat/3.1.2.goodbye_cat

# ネコがいるなら次tick予約
    execute if entity @e[type=cat,tag=152.CalledCat,limit=1] run schedule function asset:sacred_treasure/0152.call_cat/3.1.entity_manager 1t replace

# ネコがいないときスコア残ってるの、消したいけど不要だったりする？（@aならいいとか教えて欲しい...）
    # execute unless entity @e[type=cat,tag=152.CalledCat,limit=1] run scoreboard players reset * 152.CatTime