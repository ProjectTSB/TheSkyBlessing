#> api:damage/pre_modifier
#
#
#
# @api

# 返すデータ
# Mobの名前
# MobのUUID
# AttackerType

# 被攻撃者とPreModifierのデータだけでもうダメージを与えられるのが理想？

# 前のデータを念のため削除
    data remove storage api: Return.PreModifier

#
    execute if entity @s[type= player] run function api:damage/core/modify/pre/player
    execute if entity @s[type=!player] run function api:damage/core/modify/pre/non-player

# api:damage/側で、Return側に入ってたらそれを使う
