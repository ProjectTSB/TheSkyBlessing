#> asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/6.3.start_counter_1
#
# アニメーションのイベントハンドラ 剣モード・溜め斬りコンボ カウンター開始 2回目
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/6.1.start_counter

# アニメーション変更
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/16_04_sword_charge_charge_1/stop
    scoreboard players set @s 8T.AnimationTimer 254
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/16_05_sword_charge_counter/play
    tag @s add 8T.Temp.PlayCounterAnimation

## ワープ
# 演出
    function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.1.effect_teleport
# 横に移動
    execute facing entity @p[tag=Attacker] feet rotated ~ 0 positioned ^3 ^ ^ facing entity @p[tag=Attacker] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 攻撃者の位置を記録
    execute at @p[tag=Attacker] facing entity @s feet positioned ^ ^ ^0.5 run summon area_effect_cloud ~ ~0.3 ~ {CustomNameVisible:0b,Particle:"block air",Duration:20,Tags:["Object","8T.SkillEv.Sword.Laser.AttackPos"]}

# 終了
    tag @s remove 8T.Temp.Counter
