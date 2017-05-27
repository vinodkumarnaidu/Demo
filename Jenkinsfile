
/**
 * Created by admin on 24-May-17.
 */
@Library('ant-jsch-1.8.1.jar')
@Library('jsch-0.1.54.jar')
@Library('groovy.grape.*')
@Library('com.jcraft.jsch.*')
import groovy.grape.*
import com.jcraft.jsch.*;
import org.testng.internal.PropertiesFile

Grape.grab(group:"ant", module:"ant-jsch", version:"1.6.5", classLoader:this.class.classLoader.rootLoader)
Grape.grab(group:"com.jcraft", module:"jsch", version:"0.1.42", classLoader:this.class.classLoader.rootLoader)
node{

    def properties = readProperties file: 'variables.properties'

    println "-------Properties-----------"+properties

    def ant = new AntBuilder();

    String host= new String("${properties.getProperty('HOST_NAME')}")
    println "------------------hostname------------"+host

    int port = Integer.parseInt("${properties.PORT}")
    String username =  new String("${properties.USER_NAME}")
    String privateKey = new String("${properties.PRIVATE_KEY}")
    println "vinod-----------------------"+privateKey

    JSch jsch = null;
    Session session = null;
    Channel channel = null;
//ChannelSftp c = null;
    Process p
    try {

        jsch = new JSch()
        jsch.addIdentity(privateKey);
        println "Identity Added"
        session = jsch.getSession(username,host,port)
        java.util.Properties config = new java.util.Properties();
        config.put("StrictHostKeyChecking", "no");
        session.setConfig(config);
        println "Establishing Connection--------------"
        session.connect();
        println "Connection------Established--------"
        System.out.println("Creating SFTP Channel.");
        channel = session.openChannel("sftp");
        channel.setInputStream(System.in);
        channel.setOutputStream(System.out);
        channel.connect();
        System.out.println("shell channel connected....");
        ChannelSftp c = (ChannelSftp) channel;
        slackSend (color: '#FFFF00', message: "Starting File Upload:")
        System.out.println("Starting File Upload:");
        String fsrc = "C://Users//admin//Downloads//LinuxKeyPair.ppk", fdest = "/opt/copied/";
        c.put(fsrc, fdest);
        slackSend (color: '#00FF00', message: "Starting File Upload:")
        println "FileCopied"

    } catch (Exception e) { 	e.printStackTrace();	}

}
