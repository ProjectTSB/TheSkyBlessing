#> asset:artifact/common/field_text.m
#
# Field の数値を、説明文から参照できる文字列にする
# double のまま説明文に出すと末尾に d が付くので、小数はこの文字列を使う
# 結果は storage asset:artifact FieldText の、Field と同じパスに入る
#
# @input args
#   Path : string (Field の中の数値のパス。例: "Attack.A")
#   Scale : double (値に掛ける数。百分率で出すなら 100)
# @within function asset:artifact/*/give/2.give

# 値の絶対値を、小数点以下 4 桁に丸めた 1/10000 単位の整数にする
# data get は切り捨てるので、1 桁多く取って丸める (0.29 が 0.2899 にならないように)
# ponytail: Field の値の絶対値が 21474 以上、または Scale を掛けた値が 214748 以上だと int に収まらない、大きな小数を出すなら倍率を値の大きさで変える
    $execute store result score $FieldText Temporary run data get storage asset:artifact Field.$(Path) 100000
    data modify storage asset:artifact FieldTextTemp set value {Sign:"",Dot:"."}
    execute if score $FieldText Temporary matches ..-1 run data modify storage asset:artifact FieldTextTemp.Sign set value "-"
    execute if score $FieldText Temporary matches ..-1 run scoreboard players operation $FieldText Temporary *= $-1 Const
    scoreboard players add $FieldText Temporary 5
    scoreboard players operation $FieldText Temporary /= $10 Const
    execute store result storage asset:artifact FieldTextTemp.Rounded int 1 run scoreboard players get $FieldText Temporary
    $execute store result score $FieldText Temporary run data get storage asset:artifact FieldTextTemp.Rounded $(Scale)
    execute if score $FieldText Temporary matches 0 run data modify storage asset:artifact FieldTextTemp.Sign set value ""

# 整数部と、小数部の 4 桁に分ける
# 小数部は 10000 を足して先頭の 0 を残し、末尾の 0 を削ってから、足した 1 桁を外して文字列にする
# double を macro で文字列にすると 0.5 が .5 になり、0.0001 を掛けた値は 4.000500000000001 のようにも出るので、文字列は自分で組む
    scoreboard players operation $FieldTextFraction Temporary = $FieldText Temporary
    scoreboard players operation $FieldTextFraction Temporary %= $10000 Const
    scoreboard players add $FieldTextFraction Temporary 10000
    function asset:artifact/common/field_text/trim_zero
    execute if score $FieldTextFraction Temporary matches 1 run data modify storage asset:artifact FieldTextTemp.Dot set value ""
    scoreboard players operation $FieldText Temporary /= $10000 Const
    execute store result storage asset:artifact FieldTextTemp.Integer int 1 run scoreboard players get $FieldText Temporary
    execute store result storage asset:artifact FieldTextTemp.Fraction int 1 run scoreboard players get $FieldTextFraction Temporary
    data modify storage asset:artifact FieldTextTemp.Fraction set string storage asset:artifact FieldTextTemp.Fraction 1

# FieldText に入れる
    $data modify storage asset:artifact FieldTextTemp.Path set value "$(Path)"
    function asset:artifact/common/field_text/set.m with storage asset:artifact FieldTextTemp

# リセット
    scoreboard players reset $FieldText
    scoreboard players reset $FieldTextFraction
    scoreboard players reset $FieldTextDigit
    data remove storage asset:artifact FieldTextTemp
