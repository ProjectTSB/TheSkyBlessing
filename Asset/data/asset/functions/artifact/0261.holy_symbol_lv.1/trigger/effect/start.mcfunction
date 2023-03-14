#> asset:artifact/0261.holy_symbol_lv.1/trigger/effect/start
#
#
#
# @within function asset:artifact/0261.holy_symbol_lv.1/trigger/symbol/

# 処理化
    scoreboard players set @s 79.HolySymbol 0
# ステータス強化
    # 攻撃速度
        attribute @s generic.attack_speed modifier add 1-0-1-0-10500000000 "HolySymbol-Modifier" 0.01 multiply
    # 物理ダメージ
        data modify storage api: Argument.UUID set value [I;1,1,261,0]
        data modify storage api: Argument.Amount set value 0.01
        data modify storage api: Argument.Operation set value "multiply"
        function api:modifier/attack/physical/add
    # 魔法ダメージ
        data modify storage api: Argument.UUID set value [I;1,1,261,0]
        data modify storage api: Argument.Amount set value 0.01
        data modify storage api: Argument.Operation set value "multiply"
        function api:modifier/attack/magic/add