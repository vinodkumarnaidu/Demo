
node{
def properties = readProperties file: 'variables.properties'
println "-------Properties-----------"+properties
int port = Integer.parseInt("${properties.PORT}")
String username =  new String("${properties.USER_NAME}")
String privateKey = new String("${properties.PRIVATE_KEY}")

def ant = new AntBuilder()
ant.scp(trust: 'true',
        file: "C://Users//admin//Downloads//LinuxKeyPair.pem",
        todir: "ec2-user@54.166.129.82:/opt/copied",
        port: port,
        keyfile: privateKey,
        //passphrase: Passphrase,
        verbose: "true")     
}

