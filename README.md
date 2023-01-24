# zsh PS1 prompt replacement

### Mac OS terminal prompt customization

<p>Mac OS no longer uses bash as linux does because of licsence bash uses. As a result customizing the PS1 prompt in the Mac OS terminal is considerably different than it is in Linux.</p>

+ Firsly the option "promt_subst" must be set. This option can be set in the .zprofile or .zshrc.
</br>*I have placed this in my home directories <code>.zprofile</code> file.*

+ Next the <code>precmd</code> function must be defined.
</br>*I have placed this in my home directories <code>.zshrc</code> file.*
