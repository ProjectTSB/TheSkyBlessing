#> lib:text/core/glyph.m
#
# @within function
#   lib:text/core/next
#   lib:text/core/pair

# 文字列用の制御文字を拒否し、指定フォントと通常表示の差分を取得する
    $execute unless data storage lib:text Work{Font:"minecraft:space"} if data storage lib_text_fonts: Rejected."$(Key)" run return fail
    $data modify storage lib:text Work.UniformGlyph set from storage lib_text_fonts: Fonts."$(Font)"."$(Key)"
    $execute unless data storage lib:text Work.FixedFont run data modify storage lib:text Work.Glyph set from storage lib_text_fonts: Fonts."minecraft:default"."$(Key)"
    return 1
