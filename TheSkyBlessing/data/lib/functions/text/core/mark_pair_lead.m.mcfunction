#> lib:text/core/mark_pair_lead.m
# @within function lib:text/core/tables.m

# 補助文字の先頭を146で登録し、通常の未収録文字と区別する
    $data modify storage lib_text_fonts: Fonts."$(Font)"."$(Key)" set value 146
