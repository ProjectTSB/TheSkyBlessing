#> asset:sacred_treasure/0105.secret_meat/trigger/effect/effect
#
#
#
# @within function asset:sacred_treasure/0105.secret_meat/trigger/effect/schedule
#> Private
# @private
    #declare score_holder $Random

# 演出
    particle minecraft:electric_spark ~ ~1 ~ 0.4 0.4 0.4 0 2

# スコアをへらす
    scoreboard players remove @a 2X.EffectTime 1

# 常時得る効果
    effect give @s speed 2 3 true
    effect give @s jump_boost 2 2 true
    effect give @s haste 2 3 true


# タグを消す
    execute if score @s 2X.EffectTime matches ..0 run function asset:sacred_treasure/0105.secret_meat/trigger/effect/effect_end
# 死んだ時
    execute if entity @s[tag=Death] run function asset:sacred_treasure/0105.secret_meat/trigger/effect/effect_end