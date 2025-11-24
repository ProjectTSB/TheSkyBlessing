#> asset_manager:effect/display/construct_message/debuff
#
# デバフ行
#
# @within function asset_manager:effect/display/construct_message/

# 行頭アイコン
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Message.Effect append value {"text":"-","font":"effect/common"}
# エフェクトアイコン
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Message.Effect append from storage asset:effect Display.Debuff.Icons[]
# 行頭アイコンネガティブ
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Message.Effect append value {"text":"\\uC010","font":"space"}
# エフェクトアイコンネガティブ
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Message.Effect append from storage asset:effect Display.Debuff.NegativeSpaces[]
