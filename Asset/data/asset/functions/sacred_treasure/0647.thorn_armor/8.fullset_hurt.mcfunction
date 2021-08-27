#> asset:sacred_treasure/0647.thorn_armor/8.fullset_hurt
#
#
#
# @within function asset:sacred_treasure/0647.thorn_armor/7.check_condition

# 演出

    # 相手に赤いパーティクル
        execute if entity @e[tag=Attacker,distance=..20] as @e[tag=Attacker,distance=..20] at @s run particle falling_dust redstone_block ~ ~1.2 ~ 0.5 0.5 0.5 0 20 normal @a

    # 再帰使用：相手に棘を伸ばす演出
        execute if entity @e[tag=Attacker,distance=..20] positioned ~ ~1.5 ~ facing entity @e[tag=Attacker,distance=..20] eyes run function asset:sacred_treasure/0647.thorn_armor/9.exetend_thorn
        scoreboard players reset @s HZ.Tick

# 被ダメージ時体力回復

    # 回復する量 = 5
        data modify storage lib: Argument.Heal set value 5.0f
    # 補正function
        function lib:heal/modifier
    # 自身を対象に
        function lib:heal/
    # リセット
        data remove storage lib: Argument

# 被ダメージ時攻撃者にダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.0
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージ対象
        execute as @e[type=#lib:living,type=!player,tag=Attacker] run function lib:damage/
    # リセット
        data remove storage lib: Argument

# MP10消費
    scoreboard players set $Fluctuation Lib -10
    function lib:mp/fluctuation

