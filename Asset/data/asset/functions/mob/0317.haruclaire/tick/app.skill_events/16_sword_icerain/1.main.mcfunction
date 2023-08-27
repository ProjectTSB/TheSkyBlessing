#> asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/1.main
#
# アニメーションのイベントハンドラ 剣モード・ひさめコンボ
# 氷雨を設置する．氷雨はプレイヤーの頭上から氷弾を落とす．
# その後，ワープしながら射撃を数回行い，最後にレーザーを発射する．
# 3回目の長い射撃中に攻撃を受けると怯む．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

## 氷雨設置
# animated javaアニメーション再生 (長さ：80tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/3.1.play_rain_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 16..25 at @s positioned ~ ~0.1 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 70..80 at @s positioned ^ ^-0.05 ^-0.05 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 25 rotated ~ 0 positioned ~ ~-1 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.1.attack_rain

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 81 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/5.1.effect_teleport
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 8T.AnimationTimer matches 81 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/3.3.play_hide_animation
# 中心点に移動
    execute if score @s 8T.AnimationTimer matches 81 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] ~ ~-2 ~
    execute if score @s 8T.AnimationTimer matches 81 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @s ~ ~-2 ~

## ワープ
# プレイヤーの前方に移動
    execute if score @s 8T.AnimationTimer matches 100 at @r[distance=..25] rotated ~ 0 positioned ^ ^ ^0.1 facing entity @p feet rotated ~ 0 positioned ^ ^1 ^-7.5 run tp @s ~ ~ ~ ~ ~
# 演出(効果音のみ)
    execute if score @s 8T.AnimationTimer matches 100 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.8
    execute if score @s 8T.AnimationTimer matches 100 run playsound item.trident.return hostile @a ~ ~ ~ 1 2

## 射撃
# animated javaアニメーション再生 (長さ：25tick)
    execute if score @s 8T.AnimationTimer matches 101 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/3.2.play_shot_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 101..103 at @s positioned ~ ~0.2 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 114 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot
    execute if score @s 8T.AnimationTimer matches 118 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot
    execute if score @s 8T.AnimationTimer matches 122 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 126 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/5.1.effect_teleport
# プレイヤーの前方に移動
    execute if score @s 8T.AnimationTimer matches 126 at @r[distance=..25] rotated ~-30 0 positioned ^ ^ ^0.1 facing entity @p feet rotated ~ 0 positioned ^ ^1 ^-7.5 run tp @s ~ ~ ~ ~ ~

## 射撃
# animated javaアニメーション再生 (長さ：25tick)
    execute if score @s 8T.AnimationTimer matches 127 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/3.2.play_shot_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 127..129 at @s positioned ~ ~0.2 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 140 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot
    execute if score @s 8T.AnimationTimer matches 144 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot
    execute if score @s 8T.AnimationTimer matches 148 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 152 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/5.1.effect_teleport
# プレイヤーの前方に移動
    execute if score @s 8T.AnimationTimer matches 152 at @r[distance=..25] rotated ~30 0 positioned ^ ^ ^0.1 facing entity @p feet rotated ~ 0 positioned ^ ^1 ^-7.5 run tp @s ~ ~ ~ ~ ~

## 射撃
# animated javaアニメーション再生 (長さ：56tick)
    execute if score @s 8T.AnimationTimer matches 153 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/3.4.play_shot_long_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 153..155 at @s positioned ~ ~0.2 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 192..194 at @s positioned ^ ^0.05 ^ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 198..209 at @s positioned ^ ^-0.03 ^-0.05 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 168 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot
    execute if score @s 8T.AnimationTimer matches 172 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot
    execute if score @s 8T.AnimationTimer matches 176 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot
    execute if score @s 8T.AnimationTimer matches 180 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot
    execute if score @s 8T.AnimationTimer matches 184 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot
    execute if score @s 8T.AnimationTimer matches 188 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.2.attack_shot
# 怯み受け付け
    execute if score @s 8T.AnimationTimer matches 153 run tag @s add 8T.Temp.NotArmor
    execute if score @s 8T.AnimationTimer matches 207 run tag @s remove 8T.Temp.NotArmor

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 209 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/5.1.effect_teleport
# 中心点に移動
    execute if score @s 8T.AnimationTimer matches 209 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] ~ ~-2 ~
    execute if score @s 8T.AnimationTimer matches 209 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @s ~ ~ ~

## レーザー
# animated javaアニメーション再生 (長さ：65tick)
    execute if score @s 8T.AnimationTimer matches 209 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/3.5.play_laser_animation
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 209..217 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
# 反動
    execute if score @s 8T.AnimationTimer matches 229..234 at @s run tp @s ^ ^ ^-0.3
    execute if score @s 8T.AnimationTimer matches 235..245 at @s run tp @s ^ ^ ^-0.05
# 攻撃
    execute if score @s 8T.AnimationTimer matches 229 rotated ~ 0 positioned ^ ^1 ^1.7 run particle snowflake ~ ~ ~ 0 0 0 1 20
    execute if score @s 8T.AnimationTimer matches 229 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.5 2
    execute if score @s 8T.AnimationTimer matches 229 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1.5 1.8
    execute if score @s 8T.AnimationTimer matches 229..274 rotated ~ 0 positioned ^ ^1 ^1.7 rotated as @s run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/4.4.attack_laser
    execute if score @s 8T.AnimationTimer matches 229..254 run playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 2 2

## レーザー終了
# animated javaアニメーション再生 (長さ：20tick)
    execute if score @s 8T.AnimationTimer matches 275 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/3.6.play_laser_end_animation

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 295 run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/5.1.effect_teleport
# 中心点に移動
    execute if score @s 8T.AnimationTimer matches 295 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] ~ ~-2 ~
    execute if score @s 8T.AnimationTimer matches 295 positioned as @e[type=marker,tag=8T.Marker.SpawnPoint,sort=nearest,limit=1] run tp @s ~ ~-2 ~

# 終了
    execute if score @s 8T.AnimationTimer matches 296.. run function asset:mob/0317.haruclaire/tick/app.skill_events/16_sword_icerain/2.end
