
#===========================================================================
$XML_Main = "C:\Projects\Bubble\BubbleUI\MainWindow.xaml"
$XML_Second = "C:\Projects\Bubble\BubbleUI\SecondWindow.xaml"
$XML_Third = "C:\Projects\Bubble\BubbleUI\ThirdWindow.xaml"
#===========================================================================
$inputXML = get-content -path $XML_Main 
$secondXML = Get-Content $XML_Second
$thirdXML = Get-Content $XML_Third

$inputXML = $inputXML -replace 'mc:Ignorable="d"','' -replace "x:N",'N' -replace '^<Win.*', '<Window'
$secondXML = $secondXML -replace 'mc:Ignorable="d"','' -replace "x:N",'N' -replace '^<Win.*', '<Window'
$thirdXML = $secondXML -replace 'mc:Ignorable="d"','' -replace "x:N",'N' -replace '^<Win.*', '<Window'

[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML
[xml]$XAML2 = $secondXML
[xml]$XAML3 = $thirdXML
#Read XAML

$reader = (New-Object System.xml.XmlNodeReader $xaml)
$reader2 = (New-Object System.xml.XmlNodeReader $xaml2)
$reader3 = (New-Object System.xml.XmlNodeReader $xaml3)

try {
    #$Form = [Windows.Markup.XamlReader]::Load($reader)
    $Form2 = [Windows.Markup.XamlReader]::Load($reader2)
    #$Form3 = [Windows.Markup.XamlReader]::Load($reader3)
}
catch {
    Write-warning "Unable to parse XML, with error: $($Error[0])"
}

#===========================================================================
# Load XAML Objects In PowerShell
#===========================================================================
<#
$xaml.SelectNodes("//*[@Name]") | %{"trying item $($_.Name)";
    try {Set-Variable -Name "WPF$($_.Name)" -Value $Form.FindName($_.Name) -ErrorAction Stop}
    catch{throw}
    }
#>
$xaml2.SelectNodes("//*[@Name]") | %{"trying item $($_.Name)";
    try {Set-Variable -Name "WPF$($_.Name)" -Value $Form2.FindName($_.Name) -ErrorAction Stop}
    catch{throw}
    }
<#
$xaml3.SelectNodes("//*[@Name]") | %{"trying item $($_.Name)";
    try {Set-Variable -Name "WPF$($_.Name)" -Value $Form3.FindName($_.Name) -ErrorAction Stop}
    catch{throw}
}
#>
Function Get-FormVariables{
    if ($global:ReadmeDisplay -ne $true) {Write-host "If you need to reference this display again, run Get-FormVariables" -ForegroundColor Yellow;$global:ReadmeDisplay=$true}
    write-host "Found the following interactable elements from our form" -ForegroundColor Cyan
    get-variable WPF*
}


function CallSecondForm {
    <#
    $async = $Form2.Dispatcher.InvokeAsync({
        $Form2.ShowDialog() | Out-Null
    })
    $async.Wait() | Out-Null
    #>
    Write-Host "Second form called."
}
      
Get-FormVariables


#===========================================================================
# Use this space to add code to the various form elements in your GUI
#===========================================================================
                                                                    
#Reference 
 
#Adding items to a dropdown/combo box
    #$vmpicklistView.items.Add([pscustomobject]@{'VMName'=($_).Name;Status=$_.Status;Other="Yes"})
     
#Setting the text of a text box to the current PC name    
    #$WPFtextBox.Text = $env:COMPUTERNAME
     
#Adding code to a button, so that when clicked, it pings a system
 $WPFbutton_Login.Add_Click({ 
    
    Write-Host "button called"
    
    #CallSecondForm

 })

#===========================================================================
# Shows the form
#===========================================================================

# Marks the form as active
#[void]$Form.Activate()
[void]$Form2.Activate()

# Brings the form into focus
#[void]$Form.focus()
[void]$Form2.focus()

#$WPFTextbox_Username.Text = 'Lichard'
#$WPFTextBox_Password.Text = 'SecretPassword'

write-host "To show the form, run the following" -ForegroundColor Cyan
$Form2.ShowDialog() | out-null

<#
# Marks the form as active
[void]$Form2.Activate()

# Brings the form into focus
[void]$Form2.focus()

write-host "Form 2 loading" -ForegroundColor Cyan
$Form2.ShowDialog() | out-null
#>

