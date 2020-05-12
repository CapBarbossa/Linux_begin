时隔近一年, 换了份工作, 到新环境下, 安装 `tmux` 才发觉这个文档写的太烂
首先, 是安装过程

``` bash
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
```
编译安装, 没有什么直接可执行文件
编译完以后, 好像`tmux`可执行文件被放在 `/usr/local/bin` 目录下.

然后将那个配置文件 `.tmux.conf` 拷贝过来放到用户目录下, 如 `/home/bro` 或者 `/root`.
那个配置文件对于版本有要求限制, 在目前2020.4.10发工资这天, `tmux` 已经到了 3.2a, 但是这个配置文件完美支持的版本是2.0,里面许多语法属性在3.0中已经不再使用了.

我上传的那个`tmux.2.0.tar.gz` 是个县城的东西, 究竟是不是源码,我就不知道了, 反正是这样用的:
```
./configure && make
sudo make install
```
Note: 他娘的,好像下载不了.

## 将配置文件.tmux.conf拷贝到"~"目录下以后,如果当前已经打开有tmux对话,那么想要配置生效需要全不管以已经打开的tmux窗口. 
有时候,配置文件弄好了,见不到效果确实让人沮丧. 所以, 这里说一下明.

还有就是,安装完tmux以后,如果当前没有打开任何的窗口, 那么执行`tmux ls` 会报错误: `failed to connect to server: Connection refused`. 不要惊慌.


