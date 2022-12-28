#> asset:mob/0060.self_destructor/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0060.self_destructor/attack/1.trigger

# 演出
   execute unless block ~ ~ ~ water run playsound entity.tnt.primed hostile @a ~ ~ ~ 1 0.7 0
   execute unless block ~ ~ ~ water run particle smoke ~ ~1.8 ~ 0.3 0.25 0.3 0 15 normal @a
   execute unless block ~ ~ ~ water run particle flame ~ ~1.8 ~ 0.3 0.25 0.3 0 5 normal @a

# 自爆カウント ノーマル以下なら2、ハード以上で4進む
   execute if predicate api:global_vars/difficulty/max/normal unless block ~ ~ ~ water run scoreboard players add @s 1O.ExplodeCnt 2
   execute if predicate api:global_vars/difficulty/min/hard unless block ~ ~ ~ water run scoreboard players add @s 1O.ExplodeCnt 2