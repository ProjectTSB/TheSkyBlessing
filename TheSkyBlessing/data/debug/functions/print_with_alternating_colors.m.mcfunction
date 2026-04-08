#> debug:print_with_alternating_colors.m
#
# tellraw を出力ごとに別の色で出力します
#
# @input args
#   Message: string (TextComponent) | TextComponent
# @api

#> private
# @private
#declare storage debug:print_with_alternating_colors

# "odd" <=> "even"
    execute if data storage debug:print_with_alternating_colors {n:"odd" } run data modify storage debug:print_with_alternating_colors n set value "temp"
    execute unless data storage debug:print_with_alternating_colors {n:"temp"} run data modify storage debug:print_with_alternating_colors n set value "odd"
    execute if data storage debug:print_with_alternating_colors {n:"temp"} run data modify storage debug:print_with_alternating_colors n set value "even"

# 出力
    $execute if data storage debug:print_with_alternating_colors {n:"odd" } run tellraw @a {"text":"","extra":$(Message),"color":"#FFFFFF"}
    $execute if data storage debug:print_with_alternating_colors {n:"even"} run tellraw @a {"text":"","extra":$(Message),"color":"#C0C0C0"}
