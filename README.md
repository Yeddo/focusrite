# focusrite
Windows audio fix for driver not responding

# why ...
Microsoft altered the audio architecture specifically for versions 24H2 and 25H2 (which includes Build 26200). "Starting from Windows 11 version 24H2, audio playback is not supported when standby is entered explicitly (power button press, lid close, or through the Start menu). Audio playback is only supported when idling to screen off."

# description
Until Microsoft pushes a fix for the wakeup handshake, or Focusrite updates Focusrite Control 2 to support Build 26200's new audio sleep states, this automation bypasses the bug. Your computer will reset the audio engine in the background before your display comes up.

# procedure
Step 1: 
Save the focusrite_audio_fix.vbs file directly to your *C:* drive (or somewhere where it won't get deleted).

Step 2: Automate it on every "UnlockNow" using Windows Task Scheduler.

Click your Start menu, type Task Scheduler, and press Enter.

On the right panel, click Create Task... (do not choose Basic Task).

General Tab: 
Name it: Silent Focusrite Unlock Fix (or whatever ...)
Check Run with highest privileges (allows it to restart system services without prompting you).
Set Configure for to Windows 10 or Windows 11.

Triggers Tab:
Click New...
Change Begin the task at the top to On workstation unlock.
Click OK.

Actions Tab:
Click New...
Leave Action as Start a program.
In the Program/script box, type: wscript.exe
In the Add arguments box, type the exact path to the .vbs file: "C:\silent_audio_fix.vbs" (include the quotes).
Click OK.

Conditions Tab:
Uncheck Start the task only if the computer is on AC power (so it works on battery as well).

Click OK to save the task.
