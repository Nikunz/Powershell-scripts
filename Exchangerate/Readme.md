# Exchange rates
 This is a PowerShell script that retrieves exchange rates from `http://www.floatrates.com` and exports it into a .csv file.

#Pre-requisites
- Run Powershell with administrator access.
- VS code Powershell extension.

#process
- Write a Powershell script in any of the available editors like `notepad`, `notepad++` or `VS code with Powershell extension`.
- Navigate to the directory where the file is present. for this example, we locate the file `exchangerates.ps1`.
- To find the file go to the directory where the file is present right click on it and select `open with Powershell`.
- Run the script with the following command `./exchangerates.ps1`.
- Displays the exchange rates in the console and also exports the data to a `.csv` file.

#Notes:
- In the above code there is a variable `param` - which sets the parameters to the variable currency that is specified. in this example, this is set to `USD`
- to set to a different parameter for the currency try the command `./export-exchangerates.ps1 INR`.

#Output
- The script retrieves exchange rate information with the help of `Invoke-WebRequest` cmdlet to access data from `http"//www.floatrates.com`.
- `Rate`: The exchange rate for 1 unit of the base currency.
- `currency`: The target currency and its name.
- `Inverse`: Inverse exchange rate.
- `Date`: The date of the exchange rate data.
