#Text to speech
This is a Powershell script that utilizes text-to-speech (TTS) functionality to speak in English.

#Pre-requisites
- Powershell with administrator access.
- VS Code with Powershell extension.

#Process:
- Write a Powershell script in any of the available editors like `notepad`, `notepad++`, or `VS code` with Powershell extension.
- Navigate to the directory where the file is present. for this example, we locate the file `speakenglish.ps1`.
- To find the file go to the directory where the file is present right click on it and select Open with Powershell.
- Run the script with the following command `./speakenglish.ps1` along with the sentence you to input `./speakenglish.ps1 "Hi my name is Nikunz"`.
- When no input is provided the scripts ask for the sentence input.

#outcome:
- The script uses `SAPI.SPVoice` COM object to access text-to-speech
- If the input is given in any other language than English it returns an error message to `Install an English voice for Text-to-speech`
