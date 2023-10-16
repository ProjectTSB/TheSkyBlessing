#> asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/4.2.1.decide_attack_pos
#
# アニメーションのイベントハンドラ 前半・射撃 発射
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/1.main

# 位置決定用Entity召喚
    execute rotated ~ 0 run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:100,Tags:["Object","93.Aec.AttackPos","93.Temp.GeneralTarget"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[8,8],[0,0],[8,8]]
    execute as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,tag=!93.Aec.AttackPos.Init,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/4.2.3.spread_attack_pos

# 終了
    scoreboard players set @s 93.SubTimer 0
