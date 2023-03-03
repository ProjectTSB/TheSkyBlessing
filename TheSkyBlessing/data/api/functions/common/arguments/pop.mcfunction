#> api:common/arguments/pop
#
#
#
# @api

# idを掃除
    data remove storage api: Argument
# idを戻す
    data modify storage api: Argument set from storage api: ArgumentStash[-1].Api
    data modify storage lib: Argument set from storage api: ArgumentStash[-1].Lib
# スタックの要素を消す
    data remove storage api: ArgumentStash[-1]