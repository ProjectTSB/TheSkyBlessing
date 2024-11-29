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
$team modify Flora.LowHP prefix [$(Flora),{"text":" ","font":"default"}]
$team modify Flora.MedHP prefix [$(Flora),{"text":" ","font":"default"}]
$team modify Flora.HighHP prefix [$(Flora),{"text":" ","font":"default"}]
$team modify Urban.LowHP prefix [$(Urban),{"text":" ","font":"default"}]
$team modify Urban.MedHP prefix [$(Urban),{"text":" ","font":"default"}]
$team modify Urban.HighHP prefix [$(Urban),{"text":" ","font":"default"}]
$team modify Nyaptov.LowHP prefix [$(Nyaptov),{"text":" ","font":"default"}]
$team modify Nyaptov.MedHP prefix [$(Nyaptov),{"text":" ","font":"default"}]
$team modify Nyaptov.HighHP prefix [$(Nyaptov),{"text":" ","font":"default"}]
$team modify Wi-ki.LowHP prefix [$(Wiki),{"text":" ","font":"default"}]
$team modify Wi-ki.MedHP prefix [$(Wiki),{"text":" ","font":"default"}]
$team modify Wi-ki.HighHP prefix [$(Wiki),{"text":" ","font":"default"}]
$team modify Rumor.LowHP prefix [$(Rumor),{"text":" ","font":"default"}]
$team modify Rumor.MedHP prefix [$(Rumor),{"text":" ","font":"default"}]
$team modify Rumor.HighHP prefix [$(Rumor),{"text":" ","font":"default"}]
