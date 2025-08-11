# Simple PowerShell Port Scanner - Windows
$target = "192.168.x.x"   # Change to IP of target
$ports = 1..1024      # Change port range if necessary

foreach ($port in $ports) {
    try {
        $tcp = New-Object System.Net.Sockets.TcpClient
        $tcp.Connect($target, $port)
        if ($tcp.Connected) {
            Write-Host "Port $port is OPEN" -ForegroundColor Green
            $tcp.Close()
        }
    } catch {
        # Port is closed or filtered
    }
}
