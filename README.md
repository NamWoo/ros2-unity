# ros2-unity

Unity 관련 ROS 소스가 임포트 되어있는 ROS2 Humble


## 기본순서

1. docker 로그인/빌드, Win/Ubuntu 확인완료
2. docker 실행해 놓고 사용하던 웹브라우저에서 VNC로 접속
3. VNC안에서 ROS 사용



## docker build
```bash
# build

cd ros2-unity/docker/humble && docker build -t ros2-unity:0.0.1 .

```

## docker run

```bash
docker run -p 6080:80 -p 10000:10000 --security-opt seccomp=unconfined --shm-size=1024m ros2-unity:0.0.1

```

## VNC access

![20240725-002818](https://github.com/user-attachments/assets/a89d000f-d956-4453-a849-a333a9ffd5f3)


```bash
#web browser
http://127.0.0.1:6080/

```


## VNC Terminal sample

![20240725-003335](https://github.com/user-attachments/assets/e889dd6b-8c69-4fdd-ac6d-6311632e8e6b)


```bash
#terminator #1
ros2 run demo_nodes_py talker

#terminator #2
ros2 run demo_nodes_py talker

```






