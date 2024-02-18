#> asset:mob/0060.self_destructor/tick/3.waiting_explode
#
#
#
# @within function asset:mob/0060.self_destructor/tick/2.tick

# 爆破カウントスコア
    scoreboard players add @s 1O.ExplodeFuse 1

# 爆破待機のバフ 完全に停止はノーマル以下だけ
    effect give @s resistance 10 10 true
    execute if predicate api:global_vars/difficulty/max/normal run effect give @s slowness 10 9 true
    execute if predicate api:global_vars/difficulty/min/hard run effect give @s slowness 10 2 true