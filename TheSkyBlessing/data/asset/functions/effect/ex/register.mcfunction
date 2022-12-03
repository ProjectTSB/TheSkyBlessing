#> asset:effect/ex/register
#
#
#
# @within function asset:effect/ex/_/register
say register

# ID
    data modify storage asset:effect ID set value 2147483647
# 名前
    data modify storage asset:effect Name set value '{"text":"再生"}'
# 説明文
    data modify storage asset:effect Description set value '{"text":"強力な再生能力"}'
# 残り時間
    # data modify storage asset:effect Duration set value
# スタック (default = 1)
    data modify storage asset:effect Stack set value 1
# 残り時間の操作方法 (default = API || "replace")
    data modify storage asset:effect DurationOperation set value "replace"
# スタックの操作方法 (default = API || "replace")
    data modify storage asset:effect StackOperation set value "replace"
# 最大残り時間 (default = Integer.MAX)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (default = Integer.MAX)
    # data modify storage asset:effect MaxStack set value
# 悪い効果か否か
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処遇 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# APIで消す際に必要なLv (default = 1)
    # data modify storage asset:effect RequireClearLvWithApi set value
# 牛乳で消せるか (default = true)
    # data modify storage asset:effect AllowClearWithMilk set value