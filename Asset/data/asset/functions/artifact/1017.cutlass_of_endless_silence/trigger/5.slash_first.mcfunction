#> asset:artifact/1017.cutlass_of_endless_silence/trigger/5.slash_first
#
#
#
# @within function asset:artifact/1017.cutlass_of_endless_silence/trigger/4.slash

# パーティクル
    execute positioned ^0.3 ^0.8 ^1 run function asset:artifact/1017.cutlass_of_endless_silence/trigger/vfx

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