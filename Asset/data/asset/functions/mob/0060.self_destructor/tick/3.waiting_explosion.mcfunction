#> asset:mob/0060.self_destructor/tick/3.waiting_explosion
#
#
#
# @within function asset:mob/0060.self_destructor/tick/2.tick

# 爆破カウントスコア
     scoreboard players add @s 1O.ExploFuse 1

# 爆破待機のバフ
     effect give @s resistance 10 5 true
     effect give @s slowness 10 5 true
