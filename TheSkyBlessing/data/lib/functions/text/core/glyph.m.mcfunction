#> lib:text/core/glyph.m
#
# @within function
#   lib:text/core/next
#   lib:text/core/pair

# space以外では制御文字などの拒否対象の文字で失敗する
    $execute unless data storage lib:text Work{Font:"minecraft:space"} if data storage lib_text_fonts: Rejected."$(Key)" run return fail

# 指定フォントの文字幅を取得し、設定に追従する場合は通常表示固有の幅も取得する
    $data modify storage lib:text Work.UniformGlyph set from storage lib_text_fonts: Fonts."$(Font)"."$(Key)"
    $execute unless data storage lib:text Work.FixedFont run data modify storage lib:text Work.Glyph set from storage lib_text_fonts: Fonts."minecraft:default"."$(Key)"
    return 1
