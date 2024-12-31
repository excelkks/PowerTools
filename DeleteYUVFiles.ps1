# 删除当前目录及其子目录中所有以 .yuv 结尾的文件
Get-ChildItem -Path . -Recurse -Filter *.yuv | ForEach-Object {
    try {
        Remove-Item -Path $_.FullName -Force
        Write-Host "Deleted: $($_.FullName)" -ForegroundColor Green
    } catch {
        Write-Host "Failed to delete: $($_.FullName). Error: $($_.Exception.Message)" -ForegroundColor Red
    }
}

