
node{
import groovy.util.AntBuilder;
import groovy.grape.Grape

Grape.grab(group:"org.apache.ant", module:"ant-jsch", version:"1.8.1", classLoader:this.class.classLoader.rootLoader)
Grape.grab(group:"com.jcraft", module:"jsch", version:"0.1.42", classLoader:this.class.classLoader.rootLoader)
def ant = new AntBuilder();
ant.scp(
        trust:"true",
        file: "C://Users//admin//Downloads//LinuxKeyPair.pem",
        todir: "ec2-user@54.166.129.82:/opt/copied",
        port: 22,
        keyfile: "C://Users//admin//Downloads//LinuxKeyPair.ppk",
        //passphrase: Passphrase,
        verbose: "true"
)
}

