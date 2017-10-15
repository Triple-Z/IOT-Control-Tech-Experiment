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
- [Copyright](#copyright)

<!-- /TOC -->

## Time-Domain Analysis of First-Order Control System

一阶系统时域分析

### Task1

[E1 - MATLAB Script](/Chapter5.m)

一个具有单位负反馈系统的开环传递函数为 

$$ G_0(s) = \frac{10}{s(0.625s + 1)} = \frac{K}{s(TS+1)} $$

保持 $T=0.625$ 不变，要求在同一坐标系下绘制开环增益 $K$ 分别为 2、5、15 时系统的戴维阶跃向相应曲线，并分析开环增益 $K$ 变化对系统稳定性的影响。


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

![Chapter5](http://o8rcvuq9a.bkt.clouddn.com/Chapter5.png)

#### Result

| $T=0.625s$ | $K=2$ | $K=5$ | $K=15$ |
|:----:		 |:----: |:----: | :----: |
|闭环传递函数 | $\frac{2}{0.625 s^2 + s + 2}$ | $\frac{5}{0.625 s^2 + s + 5}$ | $\frac{15}{0.625 s^2 + s + 15}$ |
|阻尼比 $z$ | $\frac{1292}{2889}$ | $\frac{394}{1393}$ | $\frac{784}{4801}$ |
|自然频率 $\omega_n (rad/s)$ | $\frac{2889}{1615}$ | $\frac{3363}{1189}$ | $\frac{4801}{980}$ |
|闭环极点 $P$ |$-\frac{4}{5} \pm \frac{8}{5}i$ | $-\frac{4}{5} \pm \frac{860}{317}i$ | $-\frac{4}{5} \pm \frac{7013}{1451}i$ | 

### Task 2

[E2 - MATLAB Script](/Chapter5.m)

#### Output

#### Result

## Time-Domain Analysis of Second-Order Control System

二阶系统时域分析

[MATLAB Script](/Chapter51.m)

# Copyright

版权声明

Copyright &copy; 2017 [TripleZ](https://github.com/Triple-Z)