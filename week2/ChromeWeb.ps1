
function startChrome() {
    $ChromeProcess = Get-Process | Where-Object { $_.Name -ilike "*chrome*"}

    if(!$ChromeProcess) {
        Start-Process "C:\Program Files\Google\Chrome\Application\chrome.exe "https://www.champlain.edu/""

        exit

    }

    foreach ($process in $ChromeProcess) {
        Stop-Process -Id $process.Id
    }

}

startChrome