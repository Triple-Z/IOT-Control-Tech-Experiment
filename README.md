# IOT Control Tech Experiment

物联网控制技术实验 NUAA

<!-- TOC -->

- [IOT Control Tech Experiment](#iot-control-tech-experiment)
	- [Time-Domain Analysis of First-Order Control System](#time-domain-analysis-of-first-order-control-system)
		- [Task1](#task1)
			- [Output](#output)
			- [Result](#result)
		- [Task 2](#task-2)
			- [Output](#output)
			- [Result](#result)
	- [Time-Domain Analysis of Second-Order Control System](#time-domain-analysis-of-second-order-control-system)
		- [Output](#output)
		- [Result](#result)
- [Copyright](#copyright)

<!-- /TOC -->

## Time-Domain Analysis of First-Order Control System

一阶系统时域分析

### Task1

一个具有单位负反馈系统的开环传递函数为：

$$ G_0(s) = \frac{10}{s(0.625s + 1)} = \frac{K}{s(TS+1)} $$

保持 $T=0.625$ 不变，要求在同一坐标系下绘制开环增益 $K$ 分别为 2、5、15 时系统的戴维阶跃向相应曲线，并分析开环增益 $K$ 变化对系统稳定性的影响。

[E1 - MATLAB Script](/Chapter5.m)

#### Output

命令行输出：
```raw
gg =
 
  From input 1 to output:
          2
  -----------------
  0.625 s^2 + s + 2
 
  From input 2 to output:
          5
  -----------------
  0.625 s^2 + s + 5
 
  From input 3 to output:
          15
  ------------------
  0.625 s^2 + s + 15
 
Continuous-time transfer function.


wwn =

    2889/1615      3363/1189      4801/980   
    2889/1615      3363/1189      4801/980   


zz =

    1292/2889       394/1393       784/4801  
    1292/2889       394/1393       784/4801  


pp =

      -4/5      +    8/5i          -4/5      +  860/317i        -4/5      + 7013/1451i 
      -4/5      -    8/5i          -4/5      -  860/317i        -4/5      - 7013/1451i 

```

图像输出:

![Chapter5E1](http://o8rcvuq9a.bkt.clouddn.com/Chapter5.png)

#### Result

| $T=0.625s$ | $K=2$ | $K=5$ | $K=15$ |
|:----:		 |:----: |:----: | :----: |
|闭环传递函数 | $\frac{2}{0.625 s^2 + s + 2}$ | $\frac{5}{0.625 s^2 + s + 5}$ | $\frac{15}{0.625 s^2 + s + 15}$ |
|阻尼比 $z$ | $\frac{1292}{2889}$ | $\frac{394}{1393}$ | $\frac{784}{4801}$ |
|自然频率 $\omega_n (rad/s)$ | $\frac{2889}{1615}$ | $\frac{3363}{1189}$ | $\frac{4801}{980}$ |
|闭环极点 $P$ |$-\frac{4}{5} \pm \frac{8}{5}i$ | $-\frac{4}{5} \pm \frac{860}{317}i$ | $-\frac{4}{5} \pm \frac{7013}{1451}i$ |

### Task 2

保持 `Task1` 中的 $K=10$ 不变，画出当时间常数 $T$ 分别为 0.2、0.5、1 秒时系统的单位阶跃响应曲线，要求绘制在同一坐标系下，分析时间常数 $T$ 的变化对系统稳定性的影响。

[E2 - MATLAB Script](/Chapter5.m)

#### Output

命令行输出：

```raw
gg =
 
  From input 1 to output:
         10
  ----------------
  0.2 s^2 + s + 10
 
  From input 2 to output:
         10
  ----------------
  0.5 s^2 + s + 10
 
  From input 3 to output:
       10
  ------------
  s^2 + s + 10
 
Continuous-time transfer function.


wwn =

    1393/197       2889/646        721/228   
    1393/197       2889/646        721/228   


zz =

    1189/3363       646/2889       114/721   
    1189/3363       646/2889       114/721   


pp =

      -5/2      + 1012/153i        -1        + 1421/326i        -1/2      + 1249/400i  
      -5/2      - 1012/153i        -1        - 1421/326i        -1/2      - 1249/400i
```

图像输出：

![Chapter5E2](http://o8rcvuq9a.bkt.clouddn.com/Chapter5E2.png)

#### Result

| $K=10$ | $T=0.2s$ | $T=0.5s$ | $T=1s$ |
|:----: |:----: |:----: | :----: |
|闭环传递函数 | $\frac{10}{0.2 s^2 + s + 10}$ | $\frac{10}{0.5 s^2 + s + 10}$ | $\frac{10}{ s^2 + s + 10}$ |
|超调量 (%) | $30.5$ | $48.5$ | $60.5$ |
|峰值时间 (s) | $0.479$ | $0.737$ | $1.01$ |
|调节时间 (s) |$1.11$ | $2.99$ | $5.33$ |

> 调节时间: 响应达到并保持在稳态值的 $\pm 5\%$ 误差带 $\triangle$ 内所需要的最短时间。

## Time-Domain Analysis of Second-Order Control System

二阶系统时域分析

![Chapter5E3Graph](http://o8rcvuq9a.bkt.clouddn.com/Chapter5E3Graph.png)

已知二阶系统如图所示， $T_d$ 、 $K_i$ 为控制装置参数。通过对以上两个参数的设置可以实现四种不同的控制方式：

1. 当 $T_d = K_i = 0$ 时，为 `比例控制`；
1. 当 $T_d \ne 0, K_i = 0$ 时，为 `比例—微分控制`；
1. 当 $T_d = 0, K_i \ne 0$ 时，为 `测速反馈控制`；
1. 当 $T_d \ne 0, K_i \ne 0$ 时，为 `比例—微分控制` **+** `测速反馈控制`。

在同一坐标系下，记录二阶系统的四种不同控制下的单位阶跃响应曲线，分析并比较系统的动态特性变化。

[MATLAB Script](/Chapter51.m)

### Output

命令行输出：
```raw
gg =
 
  From input 1 to output:
          10
  ------------------
  0.625 s^2 + s + 10
 
  From input 2 to output:
        2 s + 10
  --------------------
  0.625 s^2 + 3 s + 10
 
  From input 3 to output:
           10
  --------------------
  0.625 s^2 + 3 s + 10
 
  From input 4 to output:
        2 s + 10
  --------------------
  0.625 s^2 + 5 s + 10
 
Continuous-time transfer function.


wwn =

       4              4              4              4       
       4              4              4              4       


zz =

       1/5            3/5            3/5            1       
       1/5            3/5            3/5            1       


pp =

      -4/5      + 4801/1225i      -12/5      +   16/5i         -12/5      +   16/5i          -4        +    0i      
      -4/5      - 4801/1225i      -12/5      -   16/5i         -12/5      -   16/5i          -4        +    0i  
```

图像输出：

![Chapter5E3](http://o8rcvuq9a.bkt.clouddn.com/Chapter5E3.png)

### Result

| 参数 | $T_d = K_i = 0$ | $T_d = 0.2, K_i = 0$ | $T_d = 0, K_i = 0.2$ | $T_d = K_i = 0.2$ |
|:----: |:----: |:----: | :----: | :----: |
|闭环传递函数 | $\frac{10}{0.625 s^2 + s + 10}$ | $\frac{2s+10}{0.625 s^2 + 3s + 10}$ | $\frac{10}{0.625 s^2 + 3s + 10}$ | $\frac{2s+10}{0.625 s^2 + 5s + 10}$ |
|阻尼比 $z$ | $\frac{1}{5}$ | $\frac{3}{5}$ | $\frac{3}{5}$ | $1$ |
|自然频率 $\omega_n (rad/s)$ | $4$ | $4$ | $4$ | $4$ |


# Copyright

版权声明

Copyright &copy; 2017 [TripleZ](https://github.com/Triple-Z)