<p align="center">
    <img src="http://eriklindernoren.se/images/acgan.gif" width="640"\>
</p>
<p align="center">
    <img src="GPU_CUDA.png"\>
</p>
##GPU驱动的概念

  `GPU`驱动使得GPU这个硬件设备可以被计算机发现,并使用,跟声卡驱动,网卡驱动无异;
##CUDA

  Compute Unified Device Architecture,统一计算设备架构,这个东西反正应该是软件层面的,它赋予了GPU进行数值计算的能力,并对外提供了高级语言的接口,比如C语言,用户可以用C语言编写一些计算的程式然后通过CUDA的支持放到GPU上运算.
  
搭建深度学习的环境的时候, 只需要在host机器上安装GPU的硬件驱动,其他的一切交给docker容器来(`docker pull tensorflow/tensorflow:1.14.0-gpu-py3`)完成. 因为在这个`tensorflow`提供的容器中已经配置好了CUDA这个狗币玩意,只管用就行了.当然,现在是2019年,CUDA到了10.0版本,以前的9.0版本也会兼容,在容器的目录中可以看到`ls /usr/local/cuda*`.Tensorflow官方提供的容器给根据你所指明的tensorflow的不同版本来为容器配置不同版本的CUDA,如果是13.0以下的tensorflow,那么容器中的CUDA是9.0,否则是14.0.Sweeeeeeeeeeety!
这些东西是比较摄人心魄的,因为九个月前折腾的时候没有明白,所以一直有阴影.现在搞清楚了,就好了.
Tensorflow官方提供的镜像自带nvidia-smi工具,所以如果要从零安装深度学习环境,最好从这里开始.
注意,要利用`GPU`,还需要安装[nvidia-docker](网址 https://github.com/NVIDIA/nvidia-docker).





