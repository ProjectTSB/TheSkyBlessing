#> asset:sacred_treasure/0651.prominence_armor/7.player_tick
#
#
#
# @within function asset:sacred_treasure/0651.prominence_armor/6.schedule_loop

# 演出 流石に負荷を考慮し2tickごとに一個
    scoreboard players add @s I3.ParticleTick 1
    execute if score @s I3.ParticleTick matches 2.. run particle lava ~ ~1.3 ~ 1 0.4 1 0 1 normal @a
    execute if score @s I3.ParticleTick matches 2.. run scoreboard players reset @s I3.ParticleTick

# バフ
    effect give @s fire_resistance 1 0 true

# 燃えてると魂炎が周りに出る火力が上がる状態に
    execute unless score @s I3.BurnTick matches 600.. if predicate lib:is_burnning run scoreboard players add @s I3.BurnTick 3
    execute if score @s I3.BurnTick matches 0.. run function asset:sacred_treasure/0651.prominence_armor/8.burning_buff

# スコアをへらす
    scoreboard players remove @s I3.AttackCool 1

# タグを消す(2tick後にこのタグを消さないとダメージライブラリでダメージトリガー炸裂する)
    execute if score @s I3.AttackCool matches ..0 run tag @s remove I3.Attack
    execute if score @s I3.AttackCool matches ..0 run scoreboard players reset @s I3.AttackCool
