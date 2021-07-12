git config --global user.name 'Felix Schaipp'
git config --global user.email 'felix.schaipp@auteon.de'
# open commit message editor in vscode
git config --global core.editor "code --wait"
# only fast forward on auto pull commands
git config --global pull.ff only
# sign your commits with gpg (I used gpg to create the keys)
git config --global gpg.program gpg
git config --global commit.gpgsign true
git config --global user.signingkey XXXXXXXXXX
# check for existing gpg keys
gpg --list-secret-keys --keyid-format=long 
# use the gpg key id as a signing key
# activate git autocorrect
git config --global help.autocorrect