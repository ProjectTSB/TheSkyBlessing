#> asset:sacred_treasure/0665.purity_armor/7.player_tick
#
#
#
# @within function asset:sacred_treasure/0665.purity_armor/6.schedule_loop

# 演出
    particle dust 100000000 100000000 100000000 1 ~ ~1.2 ~ 1 1 1 0 2

# attack暴発防止スコアとタグ
    scoreboard players remove @s IH.AttackCool 1

# タグを消す(2tick後にこのタグを消さないとダメージライブラリでダメージトリガー炸裂する)
    execute if score @s IH.AttackCool matches ..0 run tag @s remove IH.Attack
    execute if score @s IH.AttackCool matches ..0 run scoreboard players reset @s IH.AttackCool