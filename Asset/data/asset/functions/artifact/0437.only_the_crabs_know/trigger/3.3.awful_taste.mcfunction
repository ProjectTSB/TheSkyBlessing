#> asset:artifact/0437.only_the_crabs_know/trigger/3.3.awful_taste
#
# MP減少,毒 + 酷い味だ
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/3.main

# MP減少
    # 減少する量 = 50
        scoreboard players set $Fluctuation Lib -50
        function lib:mp/fluctuation

# 毒
    effect give @s poison 15 2 true

# 演出
    tellraw @a[distance=..10] [{"selector":"@s","bold":true},{"text":"は酷い味だと酷評した"}]
    playsound entity.llama.ambient player @a ~ ~ ~ 1.0 1.0