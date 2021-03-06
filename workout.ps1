﻿$randomNumber = Get-Random -Maximum 12
If ($randomNumber -eq 0) {
  $workout = '25 pushups!'
}
Elseif($randomNumber -eq 1){
  $workout = '25 crunches or situps!'
}
Elseif($randomNumber -eq 2){
  $workout = 'Plank for 1 minute!'
}
Elseif($randomNumber -eq 3){
  $workout = '25 bicep curls!'
}
Elseif($randomNumber -eq 4){
  $workout = '50 jumping jacks!'
}
Elseif($randomNumber -eq 5){
  $workout = 'Alternate between cat and cow poses for 1 minute!'
}
Elseif($randomNumber -eq 6){
  $workout = '30 dumb bell rows!'
}
Elseif($randomNumber -eq 7){
  $workout = '30 lunges!'
}
Elseif($randomNumber -eq 8){
  $workout = 'Forward fold and sway like a ragdoll to loosen that back!'
}
Elseif($randomNumber -eq 9){
  $workout = '50 flutter kicks!'
}
Elseif($randomNumber -eq 10){
  $workout = 'Mountain climbers for 1 minute!'
}
Elseif($randomNumber -eq 11){
  $workout = '25 reverse crunches!'
}
Elseif($randomNumber -eq 12){
  $workout = 'Squat and punch for 1 minute!'
}
else{
   $workout = '25 squats or wall sit for 1 minute!'
}
$payload = @{
 "channel" = 'vu-fit'
  "text" = $workout
}
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -UseBasicParsing `
 -Body (ConvertTo-Json -Compress -InputObject $payload) `
 -Method Post `
 -Uri https://hooks.slack.com/services/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