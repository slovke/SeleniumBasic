
'Advanced script (Can only be executed with vbsc.exe)
'Date: 
'Creator: 
'Description: 

Dim Assert, driver

'Executed one time at the beginning of the script
Public Sub Initialize
    WScript.Echo "Initialize was called"
    Set Assert = CreateObject("Selenium.Assert")
    Set driver = CreateObject("Selenium.WebDriver")
    driver.Start "firefox", "https://www.google.co.uk"
End Sub

'Executed one time at the end of the script
Sub Terminate
    driver.Quit
End Sub

'Executed for each test(procedure) at the beginning
Sub SetUp
    WScript.Echo "SetUp was called"
    driver.Get "/"
End Sub

'Executed for each test(procedure) at the end
Sub TearDown
    WScript.Echo "TearDown was called"
End Sub

'Test example
public Sub ProcedureA
    WScript.Echo "ProcedureA was called"
End Sub

'Parametric Test example
[With("firefox", "chrome")]
Sub ProcedureB(param)
    WScript.Echo "ProcedureC was called with parameter: " & param
End Sub
