#> lib:text/core/glyph.m
#
# @within function
#   lib:text/core/next
#   lib:text/core/pair

# 指定フォントの幅を取得し、default の共通文字は uniform の表を参照する
    $data modify storage lib:text Work.Glyph set from storage lib:text_fonts Fonts."$(Font)"."$(Key)"
    $execute unless data storage lib:text Work.Glyph if data storage lib:text Work{Font:"minecraft:default"} run data modify storage lib:text Work.Glyph set from storage lib:text_fonts Fonts."minecraft:uniform"."$(Key)"
