# root 身份执行 因为需要安装到 `/usr/local/bin`
git clone -b master --branch 2.0 https://github.com/tmux/tmux.git tmux-2.0
cd tmux-2.0
sh autogen.sh
./configure && make
make install



