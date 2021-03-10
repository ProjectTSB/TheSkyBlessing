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
        data modify storage lib: Argument.Heal set value 2.0f
        say heal
    # 補正function
        function lib:heal/modifier
    # 実行
        function lib:heal/
    # リセット
        data remove storage lib: Argument

# 回復クールダウンセット
    scoreboard players set @s 152.CatTime 0