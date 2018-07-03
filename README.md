# Python-VIM-setup
### A complete guide for making VIM a comfortable python IDE
#### 1. Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  
brew update . 
#### 2. Install pyenv
pyenv is used for an organized and clean installation of multiple python versions
```
brew install pyenv
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
```
#### 3. Install python versions
To check available python versions
```
pyenv install --list
```
To install a specific version
```
pyenv install <python-version>
```
Then we can set a global python version (for example to version 3.6.5)
```
pyenv global 3.6.5
```
#### 4. Install virtual environment
Install low level virtualenv package
```
pip install virtualenv
```
Install and setup userfriendly virtualenvwrapper
```
pip install virtualenvwrapper
```
Put the following commands in the ~/.bash_profile
```
export WORKON_HOME=~/Dev_Envs
export VIRTUALENVWRAPPER_PYTHON='which python'
source /usr/local/bin/virtualenvwrapper.sh
```
#### 5. Virtual env basic usage
Create a virtualenv
```
mkvirtualenv -p <pyenv version path> <name of virtual env>
```
For example
```
mkvirtualenv -p <~/.pyenv/versions/3.6.5/bin/python3> python36
```
Work on a virtualenv
```
workon python3
Deactivate
```
Then you can install packages using pip
```
pip install numpy
```
And then freeze local packages for fast installations in other environment
```
pip freeze -l > requirements.txt
```
After creating another environment, you can do the following
```
pip install -r requirements.txt
```
#### 6. VIM setup
Make sure to install Cmake first for youcompleteme plugin
```
brew install Cmake
```
Downloade the .vimrc file from this repository and put in the home folder then you are all set


