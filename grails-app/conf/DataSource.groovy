dataSource {
    pooled = true
}
hibernate {
	generate_statistics=true
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.SingletonEhCacheRegionFactory'
}
// environment specific settings
environments {

    development {
		dataSource {
            def dbNamer = 'demo'
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "admin"
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/${dbNamer}?autoreconnect=true&useUnicode=yes&characterEncoding=UTF-8"
            pooled = true
            dialect = org.hibernate.dialect.MySQL5Dialect
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
   
	
	
    
}
