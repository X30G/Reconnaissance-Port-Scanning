# PowerShell-compatible port scanner for Linux (Kali - pwsh)
$target = "192.168.x.x"    # Change to IP of target
$ports = 1..1024       # Change port range if necessary
$timeout = 1000 # in milliseconds

foreach ($port in $ports) {
    try {
        $client = New-Object System.Net.Sockets.TcpClient
        $result = $client.BeginConnect($target, $port, $null, $null)
        $success = $result.AsyncWaitHandle.WaitOne($timeout, $false)

        if ($success) {
            Write-Host "Port $port is OPEN" -ForegroundColor Green
        }

        $client.Close()
    } catch {
        # Handle errors silently or log them
    }
}
