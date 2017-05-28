
import groovy.util.AntBuilder;
import groovy.grape.Grape
  
  Grape.grab(group:"org.apache.ant", module:"ant-jsch", version:"1.8.1", classLoader:this.class.classLoader.rootLoader)
  Grape.grab(group:"com.jcraft", module:"jsch", version:"0.1.42", classLoader:this.class.classLoader.rootLoader)
  def ant = new AntBuilder();
  ant.scp(  
    trust:"true",  
    file:"vignesh@localhost:/home/vignesh/Documents/files/file.txt",  
    todir:"/home/vignesh/Documents",  
    password:"toor",
    verbose:true,  
   )

