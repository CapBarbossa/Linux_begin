安装完系统之后, 默认是没有开启 `sshd`的. 
跟直觉不同, `ssh` 和 `sshd` 这两个命令是一般 `Unix` 发行版都会安装的, 可以在终端中输入 `ssh` + `Tab` 来看看.
如果没有安装, 那么需要安装名为 `openssh-server` 的库: `apt-get install openssh-server`

一般 `sshd` 在目录 `/usr/sbin/sshd` 中, 执行的时候需要给出完整路径: 
```shell
su root
/usr/sbin/sshd 
```
如果你的运气不好, 出错了: 
`Missing privilege separation directory: /run/sshd`
那么解决办法是: 创建一个目录 `/run/sshd`, 然后运行sshd.

Enjoy~


