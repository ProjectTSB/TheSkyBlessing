#> asset:mob/0187.flame_mage/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0187.flame_mage/tick/1.trigger

# パーティクル
    particle minecraft:falling_dust red_terracotta ~ ~1 ~ 0.1 0 0.1 0 1

# 付近にプレイヤーがいるならスコア加算 Predicateなどが完成したらそれに移行したい
    execute positioned ^ ^ ^10 if entity @p[distance=..10] run scoreboard players add @s 57.Attack 1

# 実行
    execute if score @s 57.Attack matches 80.. run function asset:mob/0187.flame_mage/event/shoot_magic

# 射撃攻撃キャンセル
    execute unless entity @p[distance=..20] run scoreboard players reset @s 57.Attack
