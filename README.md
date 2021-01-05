# 个人自定义Dockerfile
各Dockerfile说明：
* `yapi`：api接口私有部署管理，仅是用来备份，未测试
* `lotus`：filecoin节点编译和运行容器
* `Dockerfile_substrate`：用于提供substrate的编译环境
* `Dockerfile_substrate2`：用于提供substrate的编译环境，同上
* `Dockerfile_substrate_exec`：用于轻量级执行substrate程序
* `Dockerfile_alpine_cn`：默认的alpine镜像时区与我国相差8个小时，因此，这个项目在现有alpine基础上生成新的镜像，方便国人使用
* `Dockerfile_alpine_cgolang`：支持c环境依赖的golang编译环境镜像
* `Dockerfile_polkadot_ui`：Substrate前端，可视化展示
* `Dockerfile_subscan_ui`：Subscan区块链浏览器前端，可视化展示