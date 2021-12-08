#> asset:sacred_treasure/0437.only_the_crabs_know/trigger/3.1.excellent_soup
#
# HP,MP回復 + うまいっ！
#
# @within function asset:sacred_treasure/0437.only_the_crabs_know/trigger/3.main

# HP回復
    # 回復する量 = 20
        data modify storage lib: Argument.Heal set value 20f
        function lib:heal/modifier
        function lib:heal/
    # リセット
        data remove storage lib: Argument

# MP回復
    # 回復する量 = 50
        scoreboard players set $Fluctuation Lib 50
        function lib:mp/fluctuation

# 演出
    tellraw @a[distance=..10] [{"selector":"@s","bold":true},{"text":"はうまいっ！ と賞賛した"}]
    playsound entity.experience_orb.pickup master @a ~ ~ ~ 1.0 2.0