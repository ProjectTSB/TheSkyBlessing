#> api:common/arguments/stash
#
#
#
# @api

# スタックに新しい空間を追加する
    data modify storage api: ArgumentStash append value {}
# Argumentを退避
    data modify storage api: ArgumentStash[-1].Api set from storage api: Argument
    data modify storage api: ArgumentStash[-1].Lib set from storage lib: Argument
# Argumentを掃除
    data remove storage api: Argument