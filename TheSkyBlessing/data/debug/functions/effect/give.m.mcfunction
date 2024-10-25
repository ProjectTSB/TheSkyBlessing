#> debug:effect/give.m
#
# マクロで指定されたIDのEffectを付与します
#
# @input args:
#   Argument.ID : int
#   Argument.Duration? : int (default: Asset | error)
#   Argument.Stack? : int (default: 1)
#   Argument.DurationOperation? : "forceReplace" | "replace" | "add" (default: "replace")
#   Argument.StackOperation? : "forceReplace" | "replace" | "add" (default: "replace")
# @private
# @user

# マクロからデータを取得し召喚
    $data modify storage api: Argument set value $(Argument)
    function api:entity/mob/effect/give
