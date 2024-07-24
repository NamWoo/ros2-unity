# ros2-humble

* Unity 관련 ROS 소스가 임포트 되어있는 ROS2 Humble
* windows 또는 Ubuntu 환경이서 Docker 를 활용하여, 웹브라우져에서 사용할 수 있는 Docker 환경


## 기본순서

* (Prerequisites) docker install and login
1. docker build Win/Ubuntu 확인완료
2. docker run해 놓고 사용하던 웹브라우저에서 VNC로 docker 접속
3. VNC안에서 ROS2 사용


## docker build
```bash
# build

cd ros2-unity/docker/humble && docker build -t ros2-humble:0.0.1 .

```

## docker run

```bash
docker run -p 6080:80 -p 10000:10000 --security-opt seccomp=unconfined --shm-size=1024m ros2-humble:0.0.1

```

## VNC access

![20240725-002818](https://github.com/user-attachments/assets/a89d000f-d956-4453-a849-a333a9ffd5f3)


```bash
#web browser (ex Chrome)
http://127.0.0.1:6080/

```


## VNC Terminal sample

![20240725-003335](https://github.com/user-attachments/assets/e889dd6b-8c69-4fdd-ac6d-6311632e8e6b)

* ROS2 Sample Test
```bash
#terminator #1
ros2 run demo_nodes_py talker

#terminator #2
ros2 run demo_nodes_py listener

```






