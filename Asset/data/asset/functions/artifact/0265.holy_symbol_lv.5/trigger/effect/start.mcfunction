#> asset:artifact/0265.holy_symbol_lv.5/trigger/effect/start
#
#
#
# @within function asset:artifact/0265.holy_symbol_lv.5/trigger/symbol/

# 処理化
    scoreboard players set @s 7D.HolySymbol 0
# ステータス強化
    # 攻撃速度
        attribute @s generic.attack_speed modifier add 1-0-1-0-10900000000 "HolySymbol-Modifier" 0.09 multiply
    # 物理ダメージ
        data modify storage api: Argument.UUID set value [I;1,1,265,0]
        data modify storage api: Argument.Amount set value 0.09
        data modify storage api: Argument.Operation set value "multiply"
        function api:modifier/attack/physical/add
    # 魔法ダメージ
        data modify storage api: Argument.UUID set value [I;1,1,265,0]
        data modify storage api: Argument.Amount set value 0.09
        data modify storage api: Argument.Operation set value "multiply"
        function api:modifier/attack/magic/add