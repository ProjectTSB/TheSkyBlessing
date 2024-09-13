#> player_manager:actionbar/
#
#
#
# @within function core:tick/player/

# 出力
    title @s actionbar [\
        {"text":"s"},\
        {"storage":"player_manager:absorption","nbt":"AbsorptionMessage[]","interpret": true,"separator":""},\
        {"text":"e"}\
    ]
    # title @s actionbar [\
    #     {"text":"","font":"space"},\
    #     {"text":"s"},\
    #     {"text":"\uC100"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[04]","interpret":true,"font":"cooldown/mini_bar/head"},\
    #     {"text":"\uC024"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[03]","interpret":true,"font":"cooldown/mini_bar/chest"},\
    #     {"text":"\uC024"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[02]","interpret":true,"font":"cooldown/mini_bar/legs"},\
    #     {"text":"\uC024"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[01]","interpret":true,"font":"cooldown/mini_bar/feet"},\
    #     {"text":"\u0003"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[00]","interpret":true,"font":"cooldown/mini_bar/offhand"},\
    #     {"text":"\u0011"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[05]","interpret":true,"font":"cooldown/mini_bar/"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[06]","interpret":true,"font":"cooldown/mini_bar/"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[07]","interpret":true,"font":"cooldown/mini_bar/"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[08]","interpret":true,"font":"cooldown/mini_bar/"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[09]","interpret":true,"font":"cooldown/mini_bar/"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[10]","interpret":true,"font":"cooldown/mini_bar/"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[11]","interpret":true,"font":"cooldown/mini_bar/"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[12]","interpret":true,"font":"cooldown/mini_bar/"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[13]","interpret":true,"font":"cooldown/mini_bar/"},\
    #     {"storage":"asset:artifact","nbt":"LCDMessages[14]","interpret":true,"font":"cooldown/mini_bar/"},\
    #     {"text":"\uC142"},\
    #     {"storage":"asset:artifact","nbt":"MainBarMessage[]","interpret":true,"font":"cooldown/main_bar","separator":""},\
    #     {"text":"\u0100"},\
    #     {"text":"e"}\
    # ]
    # title @s actionbar [\
    #     {"text":"","font":"space"},\
    #     {"text":"s","font":"default"},\
    #     {"text":"\uC051"},\
    #     {"storage":"asset:artifact","nbt":"MainBarMessage[]","interpret":true,"font":"cooldown/main_bar","separator":""},\
    #     {"text":"\uC051"},\
    #     {"storage":"player_manager:absorption","nbt":"AbsorptionMessage[]","interpret": true,"separator":""},\
    #     {"text":"e","font":"default"}\
    # ]

# リセット
    data remove storage player_manager:absorption AbsorptionMessage
    data remove storage asset:artifact MainBarMessage
    data remove storage asset:artifact LCDMessages
