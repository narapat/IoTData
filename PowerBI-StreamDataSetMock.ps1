while($true){
    $endpoint = "https://api.powerbi.com/beta/28200f6a-14de-4cfb-959a-8f4ae9f81df5/datasets/03703f2f-ebf9-4598-8ed5-582354dded48/rows?key=av4HNGtleBVnUi2JuEGLEkcxRGPpAzT7oT0RsBpWXVYKWT1qeymaJ2oBgHe95FwSYuhqDbeJZAvKhWZ6RbKAbQ%3D%3D"
    $TimeStamp = Get-Date -Format o
    $T = Get-Random -Minimum 30 -Maximum 34
    $H = Get-Random -Minimum 25 -Maximum 27

    $payload = @{
    "LT" =13.7391952
    "LG" =100.5450703
    "H" =$H
    "T" =$T
    "D" ="SimIoT"
    "DateTime" = $TimeStamp
    }
    Invoke-RestMethod -Method Post -Uri "$endpoint" -Body (ConvertTo-Json @($payload))
    Start-Sleep -s 5
}