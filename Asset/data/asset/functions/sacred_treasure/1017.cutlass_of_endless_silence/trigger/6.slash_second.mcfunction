#> asset:sacred_treasure/1017.cutlass_of_endless_silence/trigger/6.slash_second
#
#
#
# @within function asset:sacred_treasure/1017.cutlass_of_endless_silence/trigger/4.slash

# パーティクル
    execute positioned ^ ^ ^1 run function asset:sacred_treasure/1017.cutlass_of_endless_silence/trigger/vfx2

# 演出
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2

# タグ付与
    execute positioned ^ ^ ^1 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] add Hit
    execute positioned ^ ^ ^2 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] add Hit

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 400.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,tag=Hit,tag=!Uninterferable,distance=..5] at @s run function lib:damage/
# リセット
    function lib:damage/reset
    tag @e[type=#lib:living,tag=Enemy,tag=Hit,tag=!Uninterferable,distance=..10] remove Hit

# 地面にいるやつをうちあげ

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 100.0f
# 魔法属性
    data modify storage lib: Argument.AttackType set value "Physical"
# 無属性
    data modify storage lib: Argument.ElementType set value "None"
# ダメージ
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,nbt={OnGround:1b},distance=..20] run function lib:damage/
# 上空へ飛ばす
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,nbt={OnGround:1b},distance=..20] at @s run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,Effects:[{Id:25,Amplifier:80b,Duration:3,ShowParticles:0b},{Id:11,Amplifier:127b,Duration:1,ShowParticles:0b},{Id:7,Amplifier:0b,Duration:1,ShowParticles:0b}]}
# リセット
    function lib:damage/reset
