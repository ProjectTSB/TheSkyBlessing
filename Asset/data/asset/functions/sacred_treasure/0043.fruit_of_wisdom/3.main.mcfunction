#> asset:sacred_treasure/0043.fruit_of_wisdom/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0043.fruit_of_wisdom/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    # MP回復
        scoreboard players set $Fluctuation Lib 10000
        function lib:mp/fluctuation

    # 体力減
        data modify storage lib: Argument set value {AttackType:Physical,DisableParticle:1b,BypassArmor:1b,BypassResist:1b}
        execute store result storage lib: Argument.Damage float 0.01 run data get entity @s Health 75
        function lib:damage/
        data remove storage lib: Argument
        playsound entity.player.hurt player @a ~ ~ ~ 1 1
        particle enchant ~ ~1 ~ 0.5 0.5 0.5 0 300 force @a