#> asset:artifact/0152.call_cat/trigger/3.1.1.heal
#
# 周囲の仲間を回復させる
#
# @within function asset:artifact/0152.call_cat/trigger/3.1.entity_manager

# ネコの場所に演出
    particle minecraft:heart ~ ~0.75 ~ 0.1 0.1 0.1 1 1

# プレーヤーの場所に演出
    execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.25 0.25 0.25 0 4

# 回復
    # 引数の設定
        data modify storage lib: Argument.Heal set value 2.0f
    # 補正function
        function lib:heal/modifier
    # 実行（既に4回回復した場合は実行しない）
        execute if entity @s[scores={48.CatTime=21..24}] run function lib:heal/
    # リセット
        function lib:heal/reset

# 回復回数を+1
    scoreboard players add @s 48.CatTime 1