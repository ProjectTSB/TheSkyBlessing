#> asset:sacred_treasure/0647.thorn_armor/trigger/8.fullset_hurt
#
#
#
# @within function asset:sacred_treasure/0647.thorn_armor/trigger/7.check_condition

#> Private
# @private
    #declare score_holder $Fluctuation

# 演出
    # 相手に赤いパーティクル
        execute if entity @e[type=#lib:living,tag=Attacker,distance=..20] as @e[type=#lib:living,tag=Attacker,distance=..20] at @s run particle falling_dust redstone_block ~ ~1.2 ~ 0.5 0.5 0.5 0 20 normal @a

    # 再帰使用：相手に棘を伸ばす演出
        execute if entity @e[type=#lib:living,tag=Attacker,distance=..20] positioned ~ ~1.5 ~ facing entity @e[type=#lib:living,tag=Attacker,distance=..20] eyes run function asset:sacred_treasure/0647.thorn_armor/trigger/9.exetend_thorn
        scoreboard players reset @s HZ.Tick

# 被ダメージ時体力回復
    data modify storage lib: Argument.Heal set value 5.0f
    function lib:heal/modifier
    function lib:heal/
    data remove storage lib: Argument

# 被ダメージ時攻撃者にダメージ
    data modify storage lib: Argument.Damage set value 12.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Attacker] run function lib:damage/
    function lib:damage/reset

# MP10消費
    scoreboard players set $Fluctuation Lib -10
    function lib:mp/fluctuation