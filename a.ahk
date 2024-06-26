; Switch Capslock and Escape
$Capslock::Esc
$Esc::Capslock

; Run programs
<#c::Run "C:\Users\Jkastelic\Documents\prog\Free42Decimal.exe"
<#z::Run "C:\Program Files\Google\Chrome\Application\chrome.exe"
<#m::Run "C:\Users\Jkastelic\Documents\prog\foobar2000\foobar2000.exe"

; Special characters
<#^!Right::Send '→'
<#^!Left::Send '←'
<#^!Up::Send '↑'
<#^!Down::Send '↓'
<#^!.::Send '≥'
<#^!,::Send '≤'
<#^!+,::Send '⪅'
<#^!-::Send '−'   ; minus symbol
<#^!m::Send '—'   ; em dash
<#^!n::Send '–'   ; en dash
<#^!d::Send '°'
<#^!+=::Send '±'
<#^!=::Send '≈'
<#^!x::Send '×'
<#^!+x::Send '⋅'
<#^!s::Send '√'

; Greek letters
^!b::Send 'β'
^!+d::Send 'Δ'
^!d::Send 'δ'
^!+p::Send 'Π'
^!p::Send 'π'
^!+f::Send 'Φ'
^!f::Send 'φ'
^!+o::Send 'Ω'
^!o::Send 'ω'
^!m::Send 'μ'
^!+s::Send 'Σ'
^!s::Send 'σ'
^!e::Send 'ε'
^!t::Send 'θ'
^!h::Send 'η'
^!r::Send 'ρ'