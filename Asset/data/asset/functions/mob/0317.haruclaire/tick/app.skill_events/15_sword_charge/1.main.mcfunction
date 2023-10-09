#> asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/1.main
#
# アニメーションのイベントハンドラ 剣モード・溜め斬りコンボ
# 力をためた後，遠距離に届く斬撃で攻撃する．
# 溜め中に攻撃を受けると，攻撃を回避したうえでカウンター攻撃をする．
# その後プレイヤーの近くに移動し，斬撃を2回行った後，中心点に移動して再度溜める．
# 2回目の溜め後のカウンターを回避すると隙が生じる．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

## 溜め
# animated javaアニメーション再生 (長さ：95tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/3.1.play_charge_0_animation
# 溜め中は耐性付与
    execute if score @s 8T.AnimationTimer matches 15 run tag @s add 8T.Temp.Counter
    execute if score @s 8T.AnimationTimer matches 15..70 run effect give @s resistance 1 8 true
    execute if score @s 8T.AnimationTimer matches 80 run tag @s remove 8T.Temp.Counter
# 演出
    execute if score @s 8T.AnimationTimer matches 15 run playsound block.beacon.activate hostile @a ~ ~ ~ 1 2
    execute if score @s 8T.AnimationTimer matches 15..80 rotated ~ 0 positioned ^ ^1.3 ^-0.6 rotated ~120 ~-20 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.2.effect_charge
# 溜め完了演出
    execute if score @s 8T.AnimationTimer matches 81..95 rotated ~ 0 positioned ^-0.75 ^1.3 ^-0.2 rotated ~40 ~-30 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.2.effect_charge
    execute if score @s 8T.AnimationTimer matches 81 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 1.7
    execute if score @s 8T.AnimationTimer matches 81 rotated ~ 0 positioned ^-0.75 ^1.3 ^-0.2 run particle crit ~ ~ ~ 0 0 0 1 50
# 攻撃地点設置
    execute if score @s 8T.AnimationTimer matches 90 at @p facing entity @s feet positioned ^ ^ ^0.5 run summon area_effect_cloud ~ ~0.3 ~ {CustomNameVisible:0b,Particle:"block air",Duration:20,Tags:["Object","8T.SkillEv.Sword.Laser.AttackPos"]}
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 1..90 at @s facing entity @p feet run tp @s ^ ^ ^ ~ ~

## 溜め斬り
# animated javaアニメーション再生 (長さ：14tick)
    execute if score @s 8T.AnimationTimer matches 96 if entity @s[tag=!8T.Temp.PlayCounterAnimation] run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/3.2.play_charge_slash_animation
# 攻撃
    execute if score @s 8T.AnimationTimer matches 98 if entity @s[tag=!8T.Temp.PlayCounterAnimation] positioned as @e[type=area_effect_cloud,tag=8T.SkillEv.Sword.Laser.AttackPos,sort=nearest,limit=1] rotated ~90 60 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/4.1.attack_charge_slash
    execute if score @s 8T.AnimationTimer matches 98 if entity @s[tag=8T.Temp.PlayCounterAnimation] positioned as @e[type=area_effect_cloud,tag=8T.SkillEv.Sword.Laser.AttackPos,sort=nearest,limit=1] rotated ~90 60 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/4.2.attack_counter
# 演出
    execute if score @s 8T.AnimationTimer matches 97 positioned ~ ~1.6 ~ rotated ~90 ~-30 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.4.effect_slash
    execute if score @s 8T.AnimationTimer matches 101 positioned as @e[type=area_effect_cloud,tag=8T.SkillEv.Sword.Laser.AttackPos,sort=nearest,limit=1] run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.9

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 110 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.1.effect_teleport
# プレイヤーの目の前に移動
    execute if score @s 8T.AnimationTimer matches 110 at @r rotated ~ 0 positioned ^ ^0.5 ^1.5 facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
# カウンター終了
    execute if score @s 8T.AnimationTimer matches 110 run tag @s remove 8T.Temp.PlayCounterAnimation

## 斬撃
# animated javaアニメーション再生 (長さ：25tick)
    execute if score @s 8T.AnimationTimer matches 111 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/3.3.play_slash_animation
# 攻撃
    execute if score @s 8T.AnimationTimer matches 124 positioned ^ ^ ^2 rotated ~90 30 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/4.3.attack_slash
# 演出
    execute if score @s 8T.AnimationTimer matches 124 positioned ~ ~1.6 ~ rotated ~90 ~40 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.4.effect_slash
    execute if score @s 8T.AnimationTimer matches 127 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.9

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 131 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.1.effect_teleport
# プレイヤーの目の前に移動
    execute if score @s 8T.AnimationTimer matches 131 at @r rotated ~ 0 positioned ^ ^0.5 ^1.5 facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

## 斬撃
# animated javaアニメーション再生 (長さ：25tick)
    execute if score @s 8T.AnimationTimer matches 132 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/3.3.play_slash_animation
# 攻撃
    execute if score @s 8T.AnimationTimer matches 145 positioned ^ ^ ^2 rotated ~90 45 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/4.3.attack_slash
# 演出
    execute if score @s 8T.AnimationTimer matches 145 positioned ~ ~1.6 ~ rotated ~90 ~40 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.4.effect_slash
    execute if score @s 8T.AnimationTimer matches 148 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.9

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 157 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.1.effect_teleport
# 中心点に移動
    execute if score @s 8T.AnimationTimer matches 157 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] ~ ~-2 ~
    execute if score @s 8T.AnimationTimer matches 157 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @s ~ ~-2 ~

## 溜め
# animated javaアニメーション再生 (長さ：80tick)
    execute if score @s 8T.AnimationTimer matches 158 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/3.4.play_charge_1_animation
# 溜め中は耐性付与
    execute if score @s 8T.AnimationTimer matches 158 run tag @s add 8T.Temp.Counter
    execute if score @s 8T.AnimationTimer matches 158..213 run effect give @s resistance 1 8 true
    execute if score @s 8T.AnimationTimer matches 218 run tag @s remove 8T.Temp.Counter
# 演出
    execute if score @s 8T.AnimationTimer matches 158 run playsound block.beacon.activate hostile @a ~ ~ ~ 1 2
    execute if score @s 8T.AnimationTimer matches 158..213 rotated ~ 0 positioned ^ ^1.3 ^-0.6 rotated ~120 ~-20 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.2.effect_charge
# 溜め完了演出
    execute if score @s 8T.AnimationTimer matches 224..238 rotated ~ 0 positioned ^-0.75 ^1.3 ^-0.2 rotated ~40 ~-30 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.2.effect_charge
    execute if score @s 8T.AnimationTimer matches 224 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 1.7
    execute if score @s 8T.AnimationTimer matches 224 rotated ~ 0 positioned ^-0.75 ^1.3 ^-0.2 run particle crit ~ ~ ~ 0 0 0 1 50
# 攻撃地点設置
    execute if score @s 8T.AnimationTimer matches 233 at @p facing entity @s feet positioned ^ ^ ^0.5 run summon area_effect_cloud ~ ~0.3 ~ {CustomNameVisible:0b,Particle:"block air",Duration:20,Tags:["Object","8T.SkillEv.Sword.Laser.AttackPos"]}
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 158..233 at @s facing entity @p feet run tp @s ^ ^ ^ ~ ~

## 溜め斬り
# animated javaアニメーション再生 (長さ：14tick)
    execute if score @s 8T.AnimationTimer matches 239 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/3.2.play_charge_slash_animation
# 攻撃
    execute if score @s 8T.AnimationTimer matches 241 positioned as @e[type=area_effect_cloud,tag=8T.SkillEv.Sword.Laser.AttackPos,sort=nearest,limit=1] rotated ~90 60 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/4.1.attack_charge_slash
# 演出
    execute if score @s 8T.AnimationTimer matches 240 positioned ~ ~1.6 ~ rotated ~90 ~-30 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.4.effect_slash
    execute if score @s 8T.AnimationTimer matches 244 positioned as @e[type=area_effect_cloud,tag=8T.SkillEv.Sword.Laser.AttackPos,sort=nearest,limit=1] run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.9

##  ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 253 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.1.effect_teleport
# 後方に移動
    execute if score @s 8T.AnimationTimer matches 253 rotated ~ 0 positioned ^ ^ ^-3 facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
# 終了
    execute if score @s 8T.AnimationTimer matches 253 run scoreboard players set @s 8T.AnimationTimer 400

## カウンター
# アニメーションはhurt側の処理で実行(長さ：65tick)
# 攻撃
    execute if score @s 8T.AnimationTimer matches 258 positioned as @e[type=area_effect_cloud,tag=8T.SkillEv.Sword.Laser.AttackPos,sort=nearest,limit=1] rotated ~90 60 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/4.2.attack_counter
# 演出
    execute if score @s 8T.AnimationTimer matches 257 positioned ~ ~1.6 ~ rotated ~90 ~40 run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/5.4.effect_slash
    execute if score @s 8T.AnimationTimer matches 262 positioned as @e[type=area_effect_cloud,tag=8T.SkillEv.Sword.Laser.AttackPos,sort=nearest,limit=1] run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.9
# カウンター終了
    execute if score @s 8T.AnimationTimer matches 263 run tag @s remove 8T.Temp.PlayCounterAnimation
# 移動
    execute if score @s 8T.AnimationTimer matches 284 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 284 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 284 facing entity @p feet run tp @s ~ ~ ~ ~ ~
    execute if score @s 8T.AnimationTimer matches 284..291 at @s rotated ~ 0 positioned ^ ^ ^-0.6 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 292..299 at @s rotated ~ 0 positioned ^ ^ ^-0.2 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 300..306 at @s rotated ~ 0 positioned ^ ^ ^-0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 284..287 at @s rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 289..292 at @s rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 293..295 at @s rotated ~ 0 positioned ~ ~-0.1 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 296..299 at @s rotated ~ 0 positioned ~ ~-0.3 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 怯み受け付け
    execute if score @s 8T.AnimationTimer matches 284 run tag @s add 8T.Temp.NotArmor
    execute if score @s 8T.AnimationTimer matches 319 run tag @s remove 8T.Temp.NotArmor

# 終了
    execute if score @s 8T.AnimationTimer matches 320.. run function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/2.end
