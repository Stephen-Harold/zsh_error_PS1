# zsh PS1 prompt replacement

![alt text](https://github.com/Stephen-Harold/zsh_error_PS1/blob/main/PS1_ScreenShot.png?raw=true)

### Mac OS terminal prompt customization

<p>Mac OS no longer uses bash as linux does because of licsencing. As a result customizing the PS1 prompt in the Mac OS terminal is considerably different than it is in Linux.</p>

+ <p>Firsly the option "PROMPT_SUBST" must be set. This option can be set in the .zprofile or .zshrc. The "PROMPT_PERCENT" is set if you want to calculate the lenght of the prompt. This isn't nessecary in this instantance as all non-printing characters are marked as such using the <code>%{\<$variable\>%}</code> syntax as per the following link: https://www.csse.uwa.edu.au/programming/linux/zsh-doc/zsh_13.html
I have set these options in the <code>.zprofile</code> file. It's worth considering that each time the .zshrc file is resourced as you create PS1 all the commands are reprocessed. For this reason I place some commands and options in the .zprofile. The .zprofile file is processed once as the terminal is created and it does this before .zshrc is processed.</p>

+ Next the <code>precmd</code> function must be defined. This is the main function that defines the PS1 variabke and it processed each and every time the [RETURN] key is pressed in the terminal. 
I have placed this in the <code>.zshrc</code> file.

+ The number of active users is useful information so it's diplayed in the prompt using the 'w' command and some formatting.
<code>echo $(w -h|wc -l|sed 's/^[ \t]*//')</code>
