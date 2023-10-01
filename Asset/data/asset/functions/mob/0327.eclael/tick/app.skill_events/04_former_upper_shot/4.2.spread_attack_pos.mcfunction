#> asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.2.spread_attack_pos
#
# アニメーションのイベントハンドラ 前半・曲射 攻撃地点拡散
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/**

# 拡散
    function lib:spread_entity/

# 上空にエクレールがいる場合，その位置に移動
    execute at @s if entity @s[tag=!93.Temp.GeneralTarget] positioned ~ ~4 ~ if entity @e[type=item_display,tag=93.ModelRoot,distance=..2] run tp @s ~ ~ ~

# 予兆
    execute at @s run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.2.1.particle_attack_pos
