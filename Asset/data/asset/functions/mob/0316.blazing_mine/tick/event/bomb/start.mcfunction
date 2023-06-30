#> asset:mob/0316.blazing_mine/tick/event/bomb/start
#
# タグ調整などをして起爆準備に入る。ボスやボスの飛び道具からも呼び出される。
#
# @within function
#   asset:mob/0316.blazing_mine/tick/2.tick
#   asset:mob/0313.blazing_fireball/tick/explosion
#   asset:mob/0314.blazing_bomb/tick/event/fireball/explosion
#   asset:mob/0311.blazing_inferno/tick/skill/dash_punch/explosion
#   asset:mob/0311.blazing_inferno/tick/skill/spread_mine/tick

# タグ付与
    tag @s add 8S.Ready

# スコアリセット
    scoreboard players reset @s 8S.Tick

# サウンド
    playsound minecraft:item.flintandsteel.use hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:entity.tnt.primed hostile @a ~ ~ ~ 1 2

# パーティクル
    particle minecraft:crit ~ ~0.25 ~ 0 0 0 0.5 10