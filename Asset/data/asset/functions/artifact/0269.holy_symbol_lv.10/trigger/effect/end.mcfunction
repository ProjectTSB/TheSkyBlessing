#> asset:artifact/0269.holy_symbol_lv.10/trigger/effect/end
#
#
#
# @within function asset:artifact/0269.holy_symbol_lv.10/trigger/effect/

# 効果時間削除
    scoreboard players reset @s 7H.HolySymbol
# ステータス強化削除
    # 攻撃速度
        attribute @s generic.attack_speed modifier remove 1-0-1-0-10d00000000
    # 物理ダメージ
        data modify storage api: Argument.UUID set value [I;1,1,269,0]
        function api:modifier/attack/physical/remove
    # 魔法ダメージ
        data modify storage api: Argument.UUID set value [I;1,1,269,0]
        function api:modifier/attack/magic/remove