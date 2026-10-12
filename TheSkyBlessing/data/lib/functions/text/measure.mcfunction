#> lib:text/measure
#
# 通常表示とUnicodeフォント強制時の、単一行の送り幅を測る
# 入力は消費する
# 引数の型と、LF・CRを含めないことは呼出側で保証する
# 空文字列は幅0で成功する
# 未収録文字は1コード単位あたり9px・太字加算0.5pxで補う
# 未対応の制御文字・行や段落の区切り文字・§・計算範囲超過は失敗し、両設定の結果を削除する
# 複数部分を合算する場合はTextAdvanceを使い、合計後に一度だけ丸める
#
# @input storage lib:
#   Text : string
#       単一行の文字列
#   Bold : bool
#       太字なら true
# @output storage lib:
#   Return.Default.TextAdvance : double
#   Return.Unifont.TextAdvance : double
#       通常表示・Unicodeフォント強制時の送り幅
#   Return.Default.TextWidth : int
#   Return.Unifont.TextWidth : int
#       送り幅を切り上げた整数
# @api

# 文字列と太字指定を取り込み、前回の結果を消す
    data remove storage lib: Return.Default
    data remove storage lib: Return.Unifont
    data modify storage lib:text Work set value {}
    data modify storage lib:text Work.Text set from storage lib: Text
    data modify storage lib:text Work.Bold set from storage lib: Bold
    data remove storage lib: Text
    data remove storage lib: Bold

# 両フォントの幅を計測し、成否を返す
    scoreboard players set $TextResult Temporary 0
    execute store result score $TextResult Temporary run function lib:text/core/measure
    return run function lib:text/core/finish
