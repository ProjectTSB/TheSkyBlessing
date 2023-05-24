#> asset:artifact/0983.icicle_blade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0983.icicle_blade/trigger/2.check_condition

#> private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound item.trident.throw player @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 1.3

# パーティクルランダム
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $11 Const
    # メッセージ出力
        execute if score $Random Temporary matches 0 positioned ~ ~1 ~ run function asset:artifact/0983.icicle_blade/trigger/slash/particle1
        execute if score $Random Temporary matches 1 positioned ~ ~1 ~ run function asset:artifact/0983.icicle_blade/trigger/slash/particle2
        execute if score $Random Temporary matches 2 positioned ~ ~1 ~ run function asset:artifact/0983.icicle_blade/trigger/slash/particle3
        execute if score $Random Temporary matches 3 positioned ~ ~1 ~ run function asset:artifact/0983.icicle_blade/trigger/slash/particle4
        execute if score $Random Temporary matches 4 positioned ~ ~1 ~ run function asset:artifact/0983.icicle_blade/trigger/slash/particle5
        execute if score $Random Temporary matches 5 positioned ~ ~1 ~ run function asset:artifact/0983.icicle_blade/trigger/slash/particle6
        execute if score $Random Temporary matches 6 positioned ~ ~1 ~ run function asset:artifact/0983.icicle_blade/trigger/slash/particle7
        execute if score $Random Temporary matches 7 positioned ~ ~1 ~ run function asset:artifact/0983.icicle_blade/trigger/slash/particle8
        execute if score $Random Temporary matches 8 positioned ~ ~1 ~ run function asset:artifact/0983.icicle_blade/trigger/slash/particle9
        execute if score $Random Temporary matches 9 positioned ~ ~1 ~ run function asset:artifact/0983.icicle_blade/trigger/slash/particle10
        execute if score $Random Temporary matches 10 positioned ~ ~1 ~ run function asset:artifact/0983.icicle_blade/trigger/slash/particle11

# 半円状に判定を出す
    tag @e[type=#lib:living,tag=Enemy,distance=..5] add RB.Hit
    execute positioned ^ ^ ^-100 run tag @e[type=#lib:living,tag=Enemy,tag=RB.Hit,distance=..100] remove RB.Hit
    execute as @e[type=#lib:living,tag=Enemy,tag=RB.Hit,distance=..100] at @s run function asset:artifact/0983.icicle_blade/trigger/4.damage


    # リセット
        scoreboard players reset $Random Temporary