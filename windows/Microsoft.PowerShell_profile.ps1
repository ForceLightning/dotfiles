function clipmaker ([Parameter(Mandatory=$true)]$i, [Parameter(Mandatory=$true)]$ss, [Parameter(Mandatory=$true)]$to, $subs, $filters, $vcodec, $acodec, [Parameter(Mandatory=$true)]$o) {
    # $i= '"' + $i+ '"'
    If ($null -eq $subs)
    {
        $subs = $i
        $subs = [regex]::escape($subs)
    }
    $EndBrackets= '([\]}])'
    $Replacement = '\$1'
    $subs = $subs -replace $EndBrackets, $Replacement
    $subs = $subs -replace '"', ''
    If ($null -eq $filters)
    {
        $filters = ""
    }
    Else
    {
        $filters = "," + $filters
    }
    $vf = '"subtitles=' + $subs + $filters + '"'
    If ($null -eq $vcodec)
    {
        $vcodec = "libx264"
    }
    If ($null -eq $acodec)
    {
        $acodec = "copy"
    }
    $inputs = '-i', $i, '-ss', $ss, '-to', $to, '-vf', $vf, '-c:v', $vcodec, '-c:a', $acodec, $o
    Write-Host $inputs
    ffmpeg $inputs
}

function shadowplay_clipper ([Parameter(Mandatory=$true)]$i, [Parameter(Mandatory=$true)]$ss, [Parameter(Mandatory=$true)]$to, $filter_complex, $crf, [Parameter(Mandatory=$true)]$o) {
    # $i = '"' + $i + '"'
    If ($null -eq $filter_complex)
    {
        $filter_complex = "amix=inputs=2:duration=longest"
    }
    If ($null -eq $crf)
    {
        $crf = "23"
    }
    $inputs = '-i', $i, '-ss', $ss, '-to', $to, '-filter_complex', $filter_complex, '-crf', $crf, $o
    Write-Host $inputs
    ffmpeg $inputs
}

function mpv_shadowplay ([Parameter(Mandatory=$true)]$file, $a) {
    If ($null -eq $a) {
        $a = '--lavfi-complex="[aid1][aid2]amix[ao]"'
    }
    mpv.exe $file $a
}