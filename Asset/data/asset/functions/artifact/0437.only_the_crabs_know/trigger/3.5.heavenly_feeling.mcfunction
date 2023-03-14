#> asset:artifact/0437.only_the_crabs_know/trigger/3.5.heavenly_feeling
#
# 初期ワープ,HPMP全快 + 天国にのぼるような
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/3.main

# 初期地点ワープ
    execute in minecraft:overworld run tp @s 23 3 24

# HP、MP全快
    # HP回復
        data modify storage lib: Argument.Heal set value 10000f
        function lib:heal/modifier
        function lib:heal/
    # リセット
        function lib:heal/reset
    # MP回復
        scoreboard players set $Fluctuation Lib 10000
        function lib:mp/fluctuation

# 演出
    tellraw @a [{"selector":"@s","bold":true},{"text":"は天国に上るような錯覚がした"}]
    playsound ui.toast.challenge_complete player @a 23 3 24 1.0 1.2