#> asset:mob/0237.lunatic_mage/skill/magic/1
#
# 魔法属性ビーム！
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# ポーズ変更
    execute if entity @s[scores={6L.Tick=2}] run item replace entity @s armor.head with stick{CustomModelData:20199}

# 予備動作的な
    execute if entity @s[scores={6L.Tick=2}] run playsound block.portal.trigger hostile @a ~ ~ ~ 0.5 2 0
    execute if entity @s[scores={6L.Tick=..20}] run particle end_rod ~ ~1.2 ~ 1 0.5 1 0.1 3 normal @a

# NoAIになる
    execute if entity @s[scores={6L.Tick=2}] run data modify entity @s NoAI set value 1b

# 1回目のみ最も最寄りのプレイヤーをターゲットとして予告線を出す
    execute if entity @s[scores={6L.Tick=20..45}] positioned ~ ~1.6 ~ facing entity @p[gamemode=!spectator,distance=..50] eyes run function asset:mob/0237.lunatic_mage/skill/magic/2.warning_line

# ターゲットとなったプレイヤーの方向を保存するためにAECを召喚して、せめてxのrotationだけでも対象の方向を見る
    execute if entity @s[scores={6L.Tick=45}] anchored eyes facing entity @p[gamemode=!spectator,distance=..50] eyes run summon area_effect_cloud ^ ^ ^0.01 {Duration:7,Tags:["Object","Uninterferable","6L.RotationMarker"]}
    execute if entity @s[scores={6L.Tick=45}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] eyes positioned as @s run tp @s ~ ~ ~ ~ 0
# 発射
    execute if entity @s[scores={6L.Tick=51}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] feet run function asset:mob/0237.lunatic_mage/skill/magic/3.shoot_beam

# ランダムなプレイヤーを向くようにAECを設置
    execute if entity @s[scores={6L.Tick=71}] anchored eyes facing entity @r[gamemode=!spectator,distance=..50] eyes run summon area_effect_cloud ^ ^ ^0.01 {Duration:7,Tags:["Object","Uninterferable","6L.RotationMarker"]}
    execute if entity @s[scores={6L.Tick=71}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] eyes positioned as @s run tp @s ~ ~ ~ ~ 0
# 発射
    execute if entity @s[scores={6L.Tick=77}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] feet run function asset:mob/0237.lunatic_mage/skill/magic/3.shoot_beam

# ランダムなプレイヤーを向くようにAECを設置
    execute if entity @s[scores={6L.Tick=97}] anchored eyes facing entity @r[gamemode=!spectator,distance=..50] eyes run summon area_effect_cloud ^ ^ ^0.01 {Duration:7,Tags:["Object","Uninterferable","6L.RotationMarker"]}
    execute if entity @s[scores={6L.Tick=97}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] eyes positioned as @s run tp @s ~ ~ ~ ~ 0
# 発射
    execute if entity @s[scores={6L.Tick=103}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] feet run function asset:mob/0237.lunatic_mage/skill/magic/3.shoot_beam

# リセット
    execute if entity @s[scores={6L.Tick=150..}] run function asset:mob/0237.lunatic_mage/tick/5.reset