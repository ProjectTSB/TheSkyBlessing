#> asset:sacred_treasure/0152.call_cat/3.1.1.heal
#
# 周囲の仲間を回復させる
#
# @within function asset:sacred_treasure/0152.call_cat/3.1.entity_manager

# ネコの場所に演出
    particle minecraft:heart ~ ~0.75 ~ 0.1 0.1 0.1 1 1

# プレーヤーの場所に演出
    execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.25 0.25 0.25 0 4

# 回復
    # 引数の設定
        execute at @s store result storage lib: Argument.Heal float 2 if entity @e[type=cat,tag=152.CalledCat,distance=..2.5,limit=4]
    # 補正function
        function lib:heal/modifier
    # 実行 //このmcfは近くのネコの数だけ実行されてるので回復可能か(一度回復したか)どうかを確認して回復
        execute if score @s 152.CatTime matches 21 run function lib:heal/
    # リセット
        data remove storage lib: Argument

# 回復クールダウンセット
    scoreboard players set @s 152.CatTime 0