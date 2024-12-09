#> core:update_team_prefix.m
#
#
# @input args
#   Flora
#   Urban
#   Nyaptov
#   Wiki
#   Rumor
# @within function core:load_once

team modify None.LowHP prefix {"text":"  ","color":"white"}
team modify None.MedHP prefix {"text":"  ","color":"white"}
team modify None.HighHP prefix {"text":"  ","color":"white"}
$team modify Flora.LowHP prefix [$(Flora),{"text":"\u0002","font":"space"}]
$team modify Flora.MedHP prefix [$(Flora),{"text":"\u0002","font":"space"}]
$team modify Flora.HighHP prefix [$(Flora),{"text":"\u0002","font":"space"}]
$team modify Urban.LowHP prefix [$(Urban),{"text":"\u0002","font":"space"}]
$team modify Urban.MedHP prefix [$(Urban),{"text":"\u0002","font":"space"}]
$team modify Urban.HighHP prefix [$(Urban),{"text":"\u0002","font":"space"}]
$team modify Nyaptov.LowHP prefix [$(Nyaptov),{"text":"\u0002","font":"space"}]
$team modify Nyaptov.MedHP prefix [$(Nyaptov),{"text":"\u0002","font":"space"}]
$team modify Nyaptov.HighHP prefix [$(Nyaptov),{"text":"\u0002","font":"space"}]
$team modify Wi-ki.LowHP prefix [$(Wiki),{"text":"\u0002","font":"space"}]
$team modify Wi-ki.MedHP prefix [$(Wiki),{"text":"\u0002","font":"space"}]
$team modify Wi-ki.HighHP prefix [$(Wiki),{"text":"\u0002","font":"space"}]
$team modify Rumor.LowHP prefix [$(Rumor),{"text":"\u0002","font":"space"}]
$team modify Rumor.MedHP prefix [$(Rumor),{"text":"\u0002","font":"space"}]
$team modify Rumor.HighHP prefix [$(Rumor),{"text":"\u0002","font":"space"}]
