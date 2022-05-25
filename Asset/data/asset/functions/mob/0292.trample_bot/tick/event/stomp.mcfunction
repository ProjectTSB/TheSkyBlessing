#> asset:mob/0292.trample_bot/tick/event/stomp
#
#
#
# @within function asset:mob/0292.trample_bot/tick/2.tick

# 演出
    playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.zombie_villager.cure neutral @a ~ ~ ~ 1 2
    scoreboard players reset @s 84.MoveTime

# モデル変更
    item replace entity @s armor.head with stick{CustomModelData:20209}

# ダメージ設定
    data modify storage lib: Argument.Damage set value 35f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"

# 補正実行
    function lib:damage/modifier

# ダメージを与える
    execute if data storage api: {HurtTime:0s} as @a[gamemode=!spectator,gamemode=!creative,distance=..3] run function lib:damage/

# 吹き飛ばし
    execute at @a[gamemode=!spectator,distance=..3] run summon area_effect_cloud ~ ~ ~ {Radius:0.1f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:20b,Duration:7,ShowParticles:0b}]}

# リセット
    function lib:damage/reset

# パーティクル
    particle smoke ~ ~0.1 ~ 1 0.1 1 0.02 100
    particle dust 1 1 0 1.5 ~ ~0.1 ~ 1 0.1 1 0.02 30
    particle dust 0.867 1 0 1.5 ~ ~0.1 ~ 1 0.1 1 0.02 30
    execute positioned ~ ~0.1 ~ run function asset:mob/0292.trample_bot/tick/event/shape