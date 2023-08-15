#> asset:mob/9000.slash_entity/example/
#
# 斬撃召喚のお手本。目線ちょっと下に斜めの斬撃を出す
#
# @within function asset:**

# データ設定
# "Color"は色。10進数のカラーコード。革防具と一緒。
# "Scale"はデカさ。均等に大きくなります。
# "Rotation"は角度。0で垂直。
# "Blightness"は明るさ。指定しなかった場合は光らない
# "CustomModelData"はデフォルト以外の見た目を指定したいとき、その最初のコマのCustomModelDataを指定する。指定しない場合はデフォルトの見た目に。
    data modify storage api: Argument.FieldOverride set value {Color:65501,Scale:5.0f,Rotation:45.0f,Brightness:15,CustomModelData:20335}

# 斬撃呼び出し
    execute anchored eyes positioned ^ ^-0.5 ^1 run function asset:mob/9000.slash_entity/slash/