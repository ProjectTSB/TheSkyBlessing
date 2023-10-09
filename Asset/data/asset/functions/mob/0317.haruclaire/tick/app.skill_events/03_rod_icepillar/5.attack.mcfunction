#> asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/5.attack
#
# アニメーションのイベントハンドラ 杖モード・つらら アニメーション再生 攻撃発生
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/03_rod_icepillar/1.main

# 演出
    particle dust 1 1000000000 1000000000 1 ~ ~1.2 ~ 0 1 0 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ~ ~0.6 ~ 0.1 0.5 0.1 1 10 normal @a
    particle dust 1 1000000000 1000000000 1 ~ ~0 ~ 0.4 0.25 0.4 1 10 normal @a
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 1 0

# 移動速度低下付与
    # effect give @a[tag=!PlayerShouldInvulnerable,distance=..2] slowness 10 2

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 50f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset

# プレイヤーに攻撃が当たった場合，削除
    execute if entity @a[gamemode=!spectator,distance=..2] run kill @e[type=area_effect_cloud,tag=8T.SkillEv.Rod.IcePillar.AttackPos,distance=0..1,sort=nearest,limit=1]
# 有効期限切れの場合，削除
    execute if score @s 8T.AnimationTimer matches 90 run kill @e[type=area_effect_cloud,tag=8T.SkillEv.Rod.IcePillar.AttackPos,distance=0..1,sort=nearest,limit=1]