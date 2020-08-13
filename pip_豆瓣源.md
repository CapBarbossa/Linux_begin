pip命令的配置文件为：
  ~/.pip/pip.conf
  如果没有这个目录和这个文件，那就创建一个。不要怀疑自己的力量，Linux本身所有的东西就是文件，创建一个文件就是会管用！然后在这个文件中填进如下内容
  ```
  [global]
  index-url = https://pypi.douban.com/simple
  [install]
  trusted-host = https://pypi.douban.com
  ```
  
  
# 下面的命令是临时使用指定的源下载安装某个python库
```
sudo pip install matplotlib -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
sudo pip install numpy -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
sudo pip install pandas -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
```
---
## 由于频率问题,在使用豆瓣源的时候通常是在配置深度学习环境,经常需要安装`opencv`,而 `opencv`有经常会需要依赖一些系统库,这些系统库单个单个找有点坑爹,在此处一并给出:
`apt-get install libsm6 libxrender1 python-qt4 libglib2.0-0`

