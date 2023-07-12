#Unused
- This PowerShell script is designed to scan and list unused files in a directory tree. It identifies files with a last access time older than a specified number of days and generates a report of those files.

#Pre-requisites
- Powershell with administrator access.
- VS Code with Powershell extension.

#parameters:
- `DirTree` (optional): Specifies the path to the directory tree. If not provided, the script will scan the current working directory.
- `Days` (optional): Specifies the number of days. The default value is `100`.

#Process:
- Write a Powershell script in any of the available editors like `notepad`, `notepad++`, or `VS code` with Powershell extension.
- Navigate to the directory where the file is present. for this example, we locate the file `unused.ps1`.
- To find the file go to the directory where the file is present right click on it and select Open with Powershell.
- Run the script with the following command `./unused.ps1`.
- Replace `<path-to-directory>` with the path to the directory you want to scan, and `<number-of-days>` with the desired number of days. If no arguments are provided, the script will use the default values.
- The script will start scanning the directory tree and generate a list of unused files.

#Exit Codes
The script uses exit codes to indicate the outcome of its execution:

`0: Success` - The script executed successfully without any errors.
`1: Error` - An error occurred during script execution.
