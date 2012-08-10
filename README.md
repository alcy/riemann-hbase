Simple utility to send hbase metrics to Riemann.  
Runs under JRuby, and uses the nice jmx4r library to gather stats exposed over JMX.  
`gem install riemann-hbase`  
`riemann-hbase -h my.riemann.server --server-type regionserver --jmx-port 10102`
  

