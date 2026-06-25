# focusrite
Audio fix for driver not responding

# description
Until Microsoft pushes a fix for the wakeup handshake, or Focusrite updates Focusrite Control 2 to support Build 26200's new audio sleep states, this automation bypasses the bug. Your computer will reset the audio engine in the background before your display comes up.

Step 1: 
Save the focusrite_audio_fix.vbs file directly to your *C:* drive (or somewhere safe where it won't get deleted).

Step 2: Automate It on Every Single UnlockNow,

Use Windows Task Scheduler to run that silent file the exact millisecond your laptop detects you logging back in.
Click your Start menu, type Task Scheduler, and press Enter.

On the right panel, click Create Task... (do not choose Basic Task).

General Tab:Name it: Silent Focusrite Unlock FixCheck Run with highest privileges (this allows it to restart system services without prompting you).
Set Configure for to Windows 10 or Windows 11.

Triggers Tab:Click New...Change Begin the task at the top to On workstation unlock.Click OK.

Actions Tab:Click New...Leave Action as Start a program.In the Program/script box, type: wscript.exe
In the Add arguments box, type the exact path to your file: "C:\silent_audio_fix.vbs" (include the quotes).Click OK.

Conditions Tab:Uncheck Start the task only if the computer is on AC power (so it works on battery).

Click OK to save the task.
