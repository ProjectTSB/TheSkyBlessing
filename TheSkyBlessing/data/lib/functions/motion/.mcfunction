#> lib:motion/
#
# 実行座標の前方にlib: Argument.VectorMagnitudeの大きさのMotionを付与します。
#
# 実行者はPlayer以外のEntityである必要があります。
#
# ※いずれかのMotionが10以上の場合Minecraftの仕様上動作しません。
#
# @input
#   as entity
#   storage lib:
#       Argument.KnockbackResist?: boolean
#       Argument.VectorMagnitude: double
# @api

# 引数を設定
    execute unless data storage lib: Argument.KnockbackResist run data modify storage lib: Argument.KnockbackResist set value 0b

# PlayerならErrorを出力
    execute if entity @s[type=player] run tellraw @s [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"MotionLibの実行者はPlayer以外のEntityである必要があります"}]
# Playerじゃなければ本処理に移行
    execute unless entity @s[type=player,tag=!Uninterferable] run function lib:motion/core/
