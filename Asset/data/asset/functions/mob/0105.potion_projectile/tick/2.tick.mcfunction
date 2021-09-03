#> asset:mob/0105.potion_projectile/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0105.potion_projectile/tick/1.trigger

# ポーションセットと向き合わせ
    execute unless score @s 2X.Tick matches 1.. run function asset:mob/0105.potion_projectile/tick/3.potion_set

# スコア
    scoreboard players add @s 2X.Tick 1

# 移動
    execute if entity @s[tag=!2X.AlreadyBroken] if block ~ ~2.0 ~ #lib:no_collision run tp @s ^ ^ ^1 ~ ~1

# プレイヤーとの接触判定
    execute if entity @s[tag=!2X.AlreadyBroken] if entity @a[distance=..1] run function asset:mob/0105.potion_projectile/tick/5.break_potion

# 頭のポーションの位置が当たり判定のあるブロックなら実行
    execute if entity @s[tag=!2X.AlreadyBroken] positioned ~ ~2 ~ unless block ~ ~ ~ #lib:no_collision run function asset:mob/0105.potion_projectile/tick/5.break_potion

# 5.break_potionが実行された位置でメインの演出
    execute if entity @s[tag=2X.AlreadyBroken] positioned ~ ~2.3 ~ run function asset:mob/0105.potion_projectile/tick/6.element_branch

# 一定時間経過によるkill
    execute if score @s 2X.Tick matches 150.. run kill @s