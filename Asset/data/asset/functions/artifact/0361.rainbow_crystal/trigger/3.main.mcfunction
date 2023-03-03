#> asset:artifact/0361.rainbow_crystal/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0361.rainbow_crystal/trigger/2.check_condition

#> private
# @private
    #declare tag Target

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

    # 対象選択
        tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..30] add Target

    # 演出
        execute at @e[type=#lib:living,type=!player,tag=Target,distance=..30] run particle dust 255 255 255 0.5 ~ ~0.25 ~ 0.025 5 0.025 0 100 force @a
        particle dust 255 255 255 1 ~ ~ ~ 15 0.25 15 0 1000 force @a
        stopsound @s * block.beacon.activate
        playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1
        playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1
        playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1

    # Damage
        # PhysicalDamage
            data merge storage lib: {Argument:{Damage:210f,AttackType:Physical,ElementType:None}}
            function lib:damage/modifier
            execute as @e[type=#lib:living,type=!player,tag=Target,distance=..30] run function lib:damage/

            data merge storage lib: {Argument:{Damage:210f,ElementType:Fire}}
            function lib:damage/modifier_continuation
            execute as @e[type=#lib:living,type=!player,tag=Target,distance=..30] run function lib:damage/

            data merge storage lib: {Argument:{Damage:210f,ElementType:Water}}
            function lib:damage/modifier_continuation
            execute as @e[type=#lib:living,type=!player,tag=Target,distance=..30] run function lib:damage/

            data merge storage lib: {Argument:{Damage:210f,ElementType:Thunder}}
            function lib:damage/modifier_continuation
            execute as @e[type=#lib:living,type=!player,tag=Target,distance=..30] run function lib:damage/

        # MagicDamage
            data merge storage lib: {Argument:{Damage:210f,AttackType:Magic,ElementType:None}}
            function lib:damage/modifier_continuation
            execute as @e[type=#lib:living,type=!player,tag=Target,distance=..30] run function lib:damage/

            data merge storage lib: {Argument:{Damage:210f,ElementType:Fire}}
            function lib:damage/modifier_continuation
            execute as @e[type=#lib:living,type=!player,tag=Target,distance=..30] run function lib:damage/

            data merge storage lib: {Argument:{Damage:210f,ElementType:Water}}
            function lib:damage/modifier_continuation
            execute as @e[type=#lib:living,type=!player,tag=Target,distance=..30] run function lib:damage/

            data merge storage lib: {Argument:{Damage:210f,ElementType:Thunder}}
            function lib:damage/modifier_continuation
            execute as @e[type=#lib:living,type=!player,tag=Target,distance=..30] run function lib:damage/

    # リセット
        function lib:damage/reset
        tag @e[type=#lib:living,type=!player,tag=Target,distance=..30] remove Target