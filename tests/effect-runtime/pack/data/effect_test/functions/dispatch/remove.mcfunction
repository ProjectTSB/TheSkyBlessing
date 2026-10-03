#> effect_test:dispatch/remove
#
# remove の入力を操作前に記録し、Field で指定された試験操作を実行する。
# @private

# 性能測定ではイベント本体の処理を省き、管理処理を比較する
    execute if data storage effect_test: {Benchmark:true} run return run data modify storage asset:effect Implement set value true

# 子 64995 では未実装として戻り、親 64994 への継承 dispatch を検証する
    execute if data storage asset:context {id:64995} run return 0
    data modify storage asset:effect Implement set value true

# イベント開始時の状態を記録する
    data modify storage effect_test: Event set value {Event:"remove"}
    data modify storage effect_test: Event.ID set from storage asset:context originID
    data modify storage effect_test: Event.DispatchID set from storage asset:context id
    data modify storage effect_test: Event.Duration set from storage asset:context Duration
    data modify storage effect_test: Event.Stack set from storage asset:context Stack
    data modify storage effect_test: Event.Field set from storage asset:context this
    data modify storage effect_test: Event.PreviousField set from storage asset:context PreviousField
    data modify storage effect_test: Log append from storage effect_test: Event

# イベントへの入力を記録してから試験操作を実行する
    data modify storage effect_test: Action set value {Name:"none"}
    data modify storage effect_test: Action.Name set from storage asset:context this.RemoveAction
    function effect_test:action.m with storage effect_test: Action
