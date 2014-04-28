alias ls="ls -G"
export PS1="\u:\w $ "
alias ftrunk='find -L ~/trunk -name'
alias fc2dsource='find -L ~/c2dsource -name'
alias fothersource='find -L ~/othersource -name'
alias hudson='ssh armedtomato@10.1.3.29'
alias xz='adb uninstall air.DragonEmpire'
alias az='adb install'
alias tp='/Applications/TexturePacker.app/Contents/MacOS/TexturePacker'
alias g='cd ~/newcoc/src-cocos-2dx/proj.android/'
alias lc='adb logcat -c'
alias l='adb logcat | grep "cocos2d-x"'
alias gp='gnuplot'

alias s='source ~/.bash_profile'
alias ss='vim ~/.bash_profile'
alias j='cd /Volumes/C/迅雷下载/'
alias d='cd /Users/chenliang/git_projects/products'

alias p1='adb shell am profile `adb shell ps | grep Dragon | cut -d " " -f4` start /sdcard/a.txt'
alias p2='adb shell am profile `adb shell ps | grep Dragon | cut -d " " -f4` stop && adb pull /sdcard/a.txt && traceview a.txt'

export XCODE_HOME="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk/usr/X11"
export ANDROID_HOME=/Users/chenliang/software/android-sdk-macosx
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools/
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
export PATH=$PATH:/Applications/BlueStacks.app/Contents/Runtime
export NDK_ROOT=~/software/android-ndk-r8d
export PATH=$PATH:$NDK_ROOT
export TEXTURE_PACKER=/Applications/TexturePacker.app/Contents/MacOS/TexturePacker
export COCOS2DX_ROOT=/Users/chenliang/software/cocos2d-x-2.1.4/cocos2d-x-2.1.4
ssh-add ~/.ssh/id_rsa_github &>/dev/null
ssh-add ~/.ssh/id_rsa_ali
ssh-add ~/.ssh/id_rsa_ucloud
ssh-add ~/.ssh/id_rsa_career
ssh-add ~/.ssh/id_rsa_info
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
alias uc='scp ~/git_projects/boom_server/target/boom_server-0.0.1-SNAPSHOT.war root@118.192.91.193:/root/jetty/webapps'
#ucloud
#alias u='ssh 118.192.91.193 -l root'
#alicloud
#alias a='ssh 115.28.242.201 -l root'
#aws ec2
alias e='ssh -i ~/personal/amazon-ec2.pem ec2-user@ec2-54-187-56-212.us-west-2.compute.amazonaws.com'

export PATH=$PATH:~/software/android-sdk-macosx/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools
alias ga='python /Users/chenliang/software/goagent-goagent-2783fec/local/proxy.py'
alias p='protoc'
alias u='sh ~/git_projects/scripts/generate_boom_messages.sh'
alias ue='vim ~/git_projects/scripts/boom_messages.proto'
alias b='cd ~/git_projects/boom/proj.android;sh build.sh && adb install -r boom.apk; cd -'
alias h='ssh -p 2222 -o PubkeyAuthentication=no gu0gu0@chenliang.info '
alias bi='b;adb install -r ~/git_projects/boom/proj.android/boom.apk; cd -'
alias r='cp /Users/chenliang/git_projects/boom_server/target/boom_server-0.0.1-SNAPSHOT.war ~/svn_projects/b00m/1/b00m.war; cd ~/svn_projects/b00m/1;svn commit -m "test" --username 'chenliang.info@gmail.com' --password '!Chenl1ang!' b00m.war ;  cd -'
export SVN_EDITOR="vim"
export PATH=/usr/local/Cellar/subversion/1.8.5/bin:$PATH
