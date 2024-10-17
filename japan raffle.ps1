$PSStyle.OutputRendering = 'Ansi'

function Draw-Dartboard {
    # Drawing the dartboard (simple text representation with more emphasis)
    Write-Host "=================================================="
    Write-Host "============== 射飛鏢！ 🎯 ==============="
    Write-Host "=================================================="
    for ($i = 0; $i -lt 10; $i++) {
        Write-Host "🎯"
        Start-Sleep -Milliseconds 500
    }
    Write-Host "飛鏢發射中……"
    Start-Sleep -Seconds 1
}

function Random-Prefecture {
    # Define Japan's 47 prefectures
    $prefectures = @(
        '北海道', '青森縣', '岩手縣', '宮城縣', '秋田縣', '山形縣', '福島縣',
        '茨城縣', '栃木縣', '群馬縣', '埼玉縣', '千葉縣', '東京都', '神奈川縣',
        '新潟縣', '富山縣', '石川縣', '福井縣', '山梨縣', '長野縣', '岐阜縣',
        '静岡縣', '愛知縣', '三重縣', '滋賀縣', '京都府', '大阪府', '兵庫縣',
        '奈良縣', '和歌山縣', '鳥取縣', '島根縣', '岡山縣', '広島縣', '山口縣',
        '徳島縣', '香川縣', '愛媛縣', '高知縣', '福岡縣', '佐賀縣', '長崎縣',
        '熊本縣', '大分縣', '宮崎縣', '鹿兒島縣', '沖縄縣'
    )
    
    # Select a random prefecture
    return $prefectures | Get-Random
}

function Display-Table {
    # Display a 6x8 table with Japan's 47 prefectures
    $prefectures = @(
        '北海道', '青森縣', '岩手縣', '宮城縣', '秋田縣', '山形縣', '福島縣',
        '茨城縣', '栃木縣', '群馬縣', '埼玉縣', '千葉縣', '東京都', '神奈川縣',
        '新潟縣', '富山縣', '石川縣', '福井縣', '山梨縣', '長野縣', '岐阜縣',
        '静岡縣', '愛知縣', '三重縣', '滋賀縣', '京都府', '大阪府', '兵庫縣',
        '奈良縣', '和歌山縣', '鳥取縣', '島根縣', '岡山縣', '広島縣', '山口縣',
        '徳島縣', '香川縣', '愛媛縣', '高知縣', '福岡縣', '佐賀縣', '長崎縣',
        '熊本縣', '大分縣', '宮崎縣', '鹿兒島縣', '沖縄縣'
    )

    Write-Host "---------------------------------------------------------------------------------"
    for ($i = 0; $i -lt 6; $i++) {
        for ($j = 0; $j -lt 8; $j++) {
            $index = $i * 8 + $j
            if ($index -lt $prefectures.Length) {
                Write-Host -NoNewline ("| " + $prefectures[$index].PadRight(6) + " ")
            }
        }
        Write-Host "|"
        Write-Host "---------------------------------------------------------------------------------"
    }
}

# Main Program
Clear-Host
Display-Table

# Simulate throwing a dart
Draw-Dartboard

# Display a random prefecture
$selectedPrefecture = Random-Prefecture



Write-Host "🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆 你射中了: $selectedPrefecture 🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆"




