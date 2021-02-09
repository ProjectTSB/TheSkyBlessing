#> asset:sacred_treasure/0152.call_cat/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0152.call_cat/2.check_condition

#> Private
# @private
    #declare tag AbstrictCat


# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

    #ネコ召喚にゃ
        summon cat ~ ~ ~ {Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:0b,Age:300,CatType:0,Tags:["AbstrictCat","CalledCat"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"block air",ReapplicationDelay:10,Radius:2f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Age:0,WaitTime:0,Color:16711680,Potion:"minecraft:healing",Effects:[{Id:6b,Amplifier:0b,Duration:1,ShowParticles:1b}]}],Attributes:[{Name:"generic.follow_range",Base:32d}]}

    #ネコの種類をランダムにするにゃ
        execute store result score $Random Temporary run function lib:random/
        scoreboard players operation $Random Temporary %= $11 Const
        execute store result entity @e[type=cat,tag=AbstrictCat,limit=1] CatType int 1 run scoreboard players get $Random Temporary

    #使用者に懐いてもらうにゃ //PlayerNBT参照してるけど使用時のみなので許して
        data modify entity @e[type=cat,tag=AbstrictCat,limit=1] Owner set from entity @s UUID

    #ネコとさようならをする予約にゃ
        schedule function asset:sacred_treasure/0152.call_cat/3.1.goodbye_cat 600t

    #リセットにゃ
        scoreboard players reset $Random Temporary
        tag @e[type=cat,tag=AbstrictCat] remove AbstrictCat