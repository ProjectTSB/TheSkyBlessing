#> asset:mob/0324.slash_entity/example/
#
# 斬撃召喚のお手本。目線ちょっと下に斜めの斬撃を出す
#
# @within function asset/**


# データ設定
# "Color"は色。10進数のカラーコード。革防具と一緒。
# "Scale"はデカさ。均等に大きくなります。
# "Rotation"は角度。0で垂直。
    data modify storage api: Argument.FieldOverride set value {Color:65501,Scale:[5.0f,5.0f,5.0f],Rotation:45.0f}

# 斬撃呼び出し
    execute anchored eyes positioned ^ ^-0.5 ^1 run function asset:mob/0324.slash_entity/slash/