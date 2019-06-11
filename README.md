# Gamabox Helm Chart

## Chart Details
This chart will do the following:

* 1 x Spark Master with port 8080 exposed on an external LoadBalancer
* 3 x Spark Workers with HorizontalPodAutoscaler to scale to max 10 pods when CPU hits 50% of 100m
* 1 x Hadoop Datanode
* 1 x Hadoop NameNode
* 1 x Yarn Resource Manager
* 1 x Yarn NodeManager
* All using Kubernetes Deployments

## Installing the Chart

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```bash
$ helm package .
$ helm install gamabox--name gamabox -f values.yaml
```

> **Tip**: You can use the default [values.yaml](values.yaml)

gamabox
├── Chart.yaml
├── README.md
├── templates
│   ├── NOTES.txt
│   ├── _helpers.tpl
│   ├── hadoop-configmap.yaml
│   ├── hdfs-dn-pdb.yaml
│   ├── hdfs-dn-pvc.yaml
│   ├── hdfs-dn-statefulset.yaml
│   ├── hdfs-dn-svc.yaml
│   ├── hdfs-nn-pdb.yaml
│   ├── hdfs-nn-pvc.yaml
│   ├── hdfs-nn-statefulset.yaml
│   ├── hdfs-nn-svc.yaml
│   ├── spark-master-deployment.yaml
│   ├── spark-sql-test.yaml
│   ├── spark-worker-deployment.yaml
│   ├── spark-worker-hpa.yaml
│   ├── yarn-nm-pdb.yaml
│   ├── yarn-nm-statefulset.yaml
│   ├── yarn-nm-svc.yaml
│   ├── yarn-rm-pdb.yaml
│   ├── yarn-rm-statefulset.yaml
│   ├── yarn-rm-svc.yaml
│   └── yarn-ui-svc.yaml
└── values.yaml

1 directory, 25 files