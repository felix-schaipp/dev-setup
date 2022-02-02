git config --global user.name 'Felix Schaipp'
git config --global user.email 'felix.schaipp@auteon.de'
# open commit message editor in vscode
git config --global core.editor "code --wait"
# only fast forward on auto pull commands
git config --global pull.ff only
# sign your commits with gpg (I used gpg to create the keys)
git config --global gpg.program gpg
git config --global commit.gpgsign true
# check for existing gpg keys
gpg --list-secret-keys --keyid-format=long 
# before using gpg the following prerequisites must be met
# install gnupg
brew install gnupg
# install pinentry mac
brew install pinentry-mac
# update conf default
echo "pinentry-program /opt/homebrew/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
# update conf m1 mac
echo "pinentry-program /usr/local/opt/brew/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
# restart gpg-agent
killall gpg-agent
# test gpg signging
echo "test" | gpg --clearsign
# use the gpg key id as a signing key
git config --global user.signingkey XXXXXXXXXX
# activate git autocorrect
git config --global help.autocorrect