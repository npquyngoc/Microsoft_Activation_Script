[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor [System.Net.SecurityProtocolType]::Tls12;

$DownloadURL = "https://raw.githubusercontent.com/npquyngoc/Microsoft_Activation_Script/master/MAS/All-In-One-Version/MAS_AIO.cmd";
$FilePath = "$env:temp\Temp_MAS_AIO.cmd";

try {
    Invoke-WebRequest -Uri $DownloadURL -UseBasicParsing -OutFile $FilePath;

} catch {
    Write-Error $_;
    return;
}

if (Test-Path $FilePath) {
    Start-Process $FilePath -Wait;

    $FileItem = Get-Item -LiteralPath $FilePath;
    $FileItem.Delete();
}