#> effect_test:action.m
#
# Field のイベント別 Action に設定した試験操作を実行する。
# Name は fixture 内の actions/ 配下の関数名。実行者と context はそのまま渡す。
# @private

# 今回のイベントに指定された操作へ分岐する
    $function effect_test:actions/$(Name)
