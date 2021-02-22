#> asset:sacred_treasure/0437.only_the_crabs_know/3.4.sanity_decrease
#
# HP減少MP回復 + 正気度減少
#
# @within function asset:sacred_treasure/0437.only_the_crabs_know/3.main

# HP減少
    # 与えるダメージ = 15
        data modify storage lib: Argument.Damage set value 15f
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.DisableParticle set value true
        data modify storage lib: Argument.BypassArmor set value true
        data modify storage lib: Argument.BypassResist set value true
        function lib:damage/
    # リセット
        data remove storage lib: Argument

# MP回復
    # 回復する量 = 100
        scoreboard players set $Fluctuation Lib 100
        function lib:mp/fluctuation

# 演出
    tellraw @a[distance=..10] [{"selector":"@s","bold":true},{"text":"は正気度が減った"}]
    playsound entity.squid.death master @a ~ ~ ~ 1.0 1.5