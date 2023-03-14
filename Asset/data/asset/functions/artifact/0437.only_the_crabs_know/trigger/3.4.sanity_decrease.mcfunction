#> asset:artifact/0437.only_the_crabs_know/trigger/3.4.sanity_decrease
#
# HP減少MP回復 + 正気度減少
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/3.main

# HP減少
    # 防御無視・補正なし・魔法・無属性の15のダメージを与える
        data modify storage lib: Argument.Damage set value 15f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.FixedDamage set value true
        function lib:damage/
    # リセット
        function lib:damage/reset

# MP回復
    # 回復する量 = 100
        scoreboard players set $Fluctuation Lib 100
        function lib:mp/fluctuation

# 演出
    tellraw @a[distance=..10] [{"selector":"@s","bold":true},{"text":"は正気度が減った"}]
    playsound entity.squid.death player @a ~ ~ ~ 1.0 1.5