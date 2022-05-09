# MinIO Tutorials

MinIO 是一款高性能、分布式的对象存储系统，以 GNU AGPL v3 进行发布。 它是一款软件产品, API 兼容 Amazon S3。它可以处理非结构化数据，如照片、视频、日志文件、备份和容器图像，(目前)支持的单个最大对象大小为 5TB。

## Distributed MinIO Quickstart Guide

MinIO in distributed mode lets you pool multiple drives (even on different machines) into a single object storage server. As drives are distributed across several nodes, distributed MinIO can withstand multiple node failures and yet ensure full data protection.

[Distributed MinIO Quickstart Guide](https://docs.min.io/docs/distributed-minio-quickstart-guide.html)

[docker-swarm/README.md](./orchestration/docker-swarm/README.md)

### WHY

*Data protection*

Distributed MinIO provides protection against multiple node/drive failures and bit rot using erasure code. As the minimum disks required for distributed MinIO is 4 (same as minimum disks required for erasure coding), erasure code automatically kicks in as you launch distributed MinIO.

*High availability*

A stand-alone MinIO server would go down if the server hosting the disks goes offline. In contrast, a distributed MinIO setup with m servers and n disks will have your data safe as long as m/2 servers or m*n/2 or more disks are online.

*Consistency Guarantees*

MinIO follows strict read-after-write and list-after-write consistency model for all i/o operations both in distributed and standalone modes. This consistency model is only guaranteed if you use disk filesystems such as xfs, ext4 or zfs etc.. for distributed setup.

### HOW

See 2. Run distributed MinIO in Get started.

![](https://github.com/minio/minio/blob/master/docs/screenshots/Architecture-diagram_distributed_nm.png?raw=true)

## MinIO Server Config Guide

[MinIO Server Config Guide](https://docs.min.io/docs/minio-server-configuration-guide.html)

### Cache

MinIO provides caching storage tier for primarily gateway deployments, allowing you to cache content for faster reads, cost savings on repeated downloads from the cloud.


