Spark single master with two workers with Vagrant:
```
$ vagrant up

$ vagrant ssh master
vagrant@master$ sudo apt-get install -y python
vagrant@master$ exit

$ vagrant up --provision
```

Start the master:
```
$ vagrant ssh master
vagrant@master$ /usr/local/spark/bin/spark-class org.apache.spark.deploy.master.Master
```

Start the workers:
```
$ vagrant ssh worker1
vagrant@master$ /usr/local/spark/bin/spark-class org.apache.spark.deploy.worker.Worker spark://<private_ip_master>:7077/

$ vagrant ssh worker2
vagrant@master$ /usr/local/spark/bin/spark-class org.apache.spark.deploy.worker.Worker spark://<private_ip_master>:7077/
```

Test the cluster:
```
$ vagrant ssh master
vagrant@master$ /usr/local/spark/bin/run-example SparkPi
```


Spark single master with two workers with Docker:

Build docker image:
```
packer build -only=docker template.json
```

Build the docker image and run
```
$ docker-compose build master
$ docker-compose up -d
```

Open in your browser http://localhost/8080


Playing with spark-shell
```
$ docker-compose exec master bash
# spark-shell
> val broadcastAList = sc.broadcast(List("a", "b", "c", "d", "e"))
> sc.parallelize(List("1", "2", "3")).map(x => broadcastAList.value ++x).collect
```

Open in your browser http://localhost:4040

Playing with examples
```
$ docker-compose exec master bash
# /usr/local/spark/bin/run-example SparkPi
```
