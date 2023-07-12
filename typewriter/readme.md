#Typewriter Effect
- This PowerShell script allows you to write text with a typewriter effect. Each character of the provided text will be displayed one by one, creating a typewriter-like animation effect.

#Pre-requisites
- Powershell with administrator access.
- VS Code with Powershell extension.

#Parameters
- `text (string)`: Specifies the text to write using the typewriter effect. If not provided, a default message will be displayed.
- `speed (int`): Specifies the speed of the typewriter effect in milliseconds. The default value is `200 milliseconds`.
- The script uses the `Write-Host` cmdlet to output each character of the text.

#Process:
- Write a Powershell script in any of the available editors like `notepad`, `notepad++`, or `VS code` with Powershell extension.
- Navigate to the directory where the file is present. for this example, we locate the file `typewriter.ps1`.
- To find the file go to the directory where the file is present right click on it and select Open with Powershell.
- Run the script with the following command `./typewriter.ps1`.

#Error Handling
- If an error occurs during the execution of the script, an error message will be displayed, indicating the line number and the specific error encountered.
