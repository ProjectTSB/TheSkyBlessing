#> debug:april/world/check_reset_artifact

# 付近にプレイヤーがいない場合、実行しない
    execute positioned 14 9 1 unless entity @a[distance=..16] run return 0

# ボタンが押されたときのみ、1回実行
    execute if block 14 9 1 minecraft:spruce_button[powered=true] run schedule function debug:april/world/reset_artifact 2t replace
