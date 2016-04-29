# Idea配置

## 性能优化

* /Applications/IntelliJ\ IDEA\ 14.app/Contents/bin/idea.vmoptions

```
-Xms2048m
-Xmx4096m
-Xmn512m
-XX:PermSize=512m
-XX:MaxPermSize=512m
-Xss256K
-XX:ReservedCodeCacheSize=64m
-XX:SurvivorRatio=1
-XX:+UseParNewGC
-XX:+UseConcMarkSweepGC
-XX:+UseCMSCompactAtFullCollection
-XX:+UseCMSInitiatingOccupancyOnly
-XX:CMSInitiatingOccupancyFraction=70
-XX:+CMSParallelRemarkEnabled
-XX:+CMSClassUnloadingEnabled
-XX:CMSFullGCsBeforeCompaction=0
-XX:LargePageSizeInBytes=100M
-Dsun.io.useCanonCaches=false
-Djava.net.preferIPv4Stack=true
-Dsun.rmi.dgc.client.gcInterval=10800000
-Dsun.rmi.dgc.server.gcInterval=10800000
-XX:SoftRefLRUPolicyMSPerMB=0
-XX:+DisableExplicitGC
-XX:+PrintClassHistogram
-XX:+PrintGCDetails
-XX:+PrintGCTimeStamps
-XX:+PrintHeapAtGC
-Xloggc:gc.log
```

