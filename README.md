# Redis哨兵模式Docker开发环境(compose版本)
---
该项目本地以Compose方式部署开发环境所使用的模板

## 准备工作
### 1. 编辑`.env-dist`(必须)
修改ANNOUNCE_IP对应内容为本机所在IP及访问密码

### 2. 创建`docker-compose.yml`
#### 2.1 从模板文件复制生成`docker-compose.yml`
```bash
cp docker-compose.yml.template docker-compose.yml
```
#### 2.2 内容调整
调整相关开放端口

---

## 常用命令
### Build
`make build`

### Start
`make start`

### Stop
`make stop`

### Status
`make status`

### Down
`make down`

---

## 其他
### Sentinel 命令操作
使用redis-cli连接任意哨兵：
```
redis-cli -h [ip] -p [port] -a [password]
```
- 查询所有被监控的主服务器信息
```
sentinel masters
```
- 查询某个主节点的信息
```
sentinel master [master name]
```
- 查看某个主节点的IP和端口
```
sentinel get-master-addr-by-name [master name]
```
- 查询从节点的信息
```
sentinel slaves [master name]
```
- 查询 Sentinel 集群中的其他 Sentinel 信息
```
sentinel sentinels [master name]
```
- 检查可用 Sentinel 的数量
```
sentinel ckquorum [master name]
```
- 强制故障转移
```
sentinel failover [master name]
```

> 该compose模板支持不同需求下开发环境的扩展，但仅限于在本地进行软件开发测试场景使用，不推荐在实际的生产环境下部署使用
