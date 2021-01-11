#> asset:sacred_treasure/0226.onegai_muscle_3/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0226.onegai_muscle_3/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    # 体力が1になるように減算,(体力*100-100)をScale0.01でDamage //TODO
        execute store result score @s Temporary run data get entity @s Health 100
        scoreboard players remove @s Temporary 100
        execute store result storage lib: Argument.Damage float 0.01 run scoreboard players get @s Temporary
        data modify storage lib: Argument.AttackType set value Physical
        data modify storage lib: Argument.DisableParticle set value true
        data modify storage lib: Argument.BypassArmor set value true
        data modify storage lib: Argument.BypassResist set value true
        function lib:damage/
        data remove storage lib: Argument
    # 効果
        effect give @s jump_boost 10 50 true
        execute if predicate player_manager:is_believe/nyaptov run effect give @s jump_boost 10 75 true
    # 演出
        playsound entity.player.hurt player @a ~ ~ ~ 1 1
        playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 1 2
        particle sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0 30 normal @s
    #リセット
        scoreboard players reset @s Temporary