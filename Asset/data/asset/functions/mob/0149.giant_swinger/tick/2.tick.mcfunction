#> asset:mob/0149.giant_swinger/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0149.giant_swinger/tick/1.trigger

# 鎌と紐づけられてなかったら鎌召喚(兼紐づけ)
    execute if entity @s[tag=45.NoPair] run function asset:mob/0149.giant_swinger/tick/2.1.summon_scythe

# 攻撃時に鎌を振るアニメーションのタイムカウンターを減らす
    execute if score @s 45.MobAtkMotTime matches 0.. run scoreboard players remove @s 45.MobAtkMotTime 1

# 大きく振る攻撃
    # 中距離以内にプレイヤーが居るならカウンターを2増やす
        execute if entity @p[distance=..6] run scoreboard players add @s 45.PlayerTimer 2
    # 近くに居なかったら1減らす
        execute unless entity @p[distance=..5] if score @s 45.PlayerTimer matches 75.. run scoreboard players remove @s 45.PlayerTimer 1

    # カウンターが200を超えたら鎌を大きく振る攻撃を実行
        execute if score @s 45.PlayerTimer matches 200..


# 鎌tick
    execute as @e[type=armor_stand,tag=45.ScytheAS] if score @s 45.PairUUID = @e[type=skeleton,tag=this,distance=..0.001,sort=nearest,limit=1] MobUUID run function asset:mob/0149.giant_swinger/tick/scythe/2.2.scythe_tick