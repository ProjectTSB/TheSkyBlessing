#> asset:artifact/0265.holy_symbol_lv.5/trigger/effect/end
#
#
#
# @within function asset:artifact/0265.holy_symbol_lv.5/trigger/effect/

# 効果時間削除
    scoreboard players reset @s 7D.HolySymbol
# ステータス強化削除
    # 攻撃速度
        attribute @s generic.attack_speed modifier remove 1-0-1-0-10900000000
    # 物理ダメージ
        data modify storage api: Argument.UUID set value [I;1,1,265,0]
        function api:modifier/attack/physical/remove
    # 魔法ダメージ
        data modify storage api: Argument.UUID set value [I;1,1,265,0]
        function api:modifier/attack/magic/remove