# ha-nfs-volume

This container aims to provide high available NFS shares for Docker, and autoscale on Swarms, Rancher or other schedulers. It is in early development.

## Quick start

### Rancher 1.6

- Add this container to a service with a minimum of 3 replicas. It can be deployed with 1 per node.

- Install Rancher's NFS volume driver, and have it connect to the export "vol".

- You may now create volumes in Rancher. The storage will be spread across your environment and available to any container.

## Plans for release

- [ ] Accept a list of filesystems to create and export on an underlying disk, filesystem, or in the container
- [ ] Automatically replicate files and self-heal when nodes go down
- [ ] Automatically make space on new nodes available to all containers
- [ ] Support Rancher 1.6 (https://rancher.com) for auto-scaling to new nodes

## Plans after release

- [ ] Support other orchestrators and schedulers
- [ ] Automatically move files off at-risk nodes with missing or damaged file replication.

## configuration

This container can be configured with environmental variables:

| Variable | Default | Description |
|---|---|---|
| exports | vol | Defaults to "vol". Space separated list of volumes to export. |
