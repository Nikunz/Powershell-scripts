#Memo-taking
- This PowerShell script allows you to add a memo text and saves it to a CSV file called "Memos.csv" in your home folder.

#Pre-requisites:
- Powershell with administrator access.
- VS Code with Powershell extension.

#Process:
- Write a Powershell script in any of the available editors like `notepad`, `notepad++`, or `VS code with Powershell extension`.
- Navigate to the directory where the file is present. for this example, we locate the file `memo.ps1`.
- To find the file go to the directory where the file is present right click on it and select Open with Powershell.
- Run the script with the following command `./memo.ps1` along with the sentence you to input `./memo.ps1 "buy chicken, buy egg whites"`.
- When no input is provided the scripts ask for the sentence input.

#Outcome:
- The script creates or appends to a CSV file named `"memos.csv"` in your home folder. Each memo entry consists of a timestamp and the corresponding memo text.
- If an error occurs while executing the script, it will display an error message on the console. The error message will indicate the line number where the error occurred.
- The script checks if the `"memos.csv"` file exists in your home folder. If it doesn't exist, the script creates a new file and adds the header line `"TIME,TEXT"`.
- The memo text, along with the current timestamp, is appended as a new line to the `CSV file`.
- The script outputs a success message indicating that the memo has been saved to the `CSV file`.
