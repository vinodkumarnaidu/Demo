 node {
 sh '''def ant = new AntBuilder();
ant.scp(
        trust:"true",
        file: "C://Users//admin//Downloads//LinuxKeyPair.pem",
        todir: "ec2-user@54.166.129.82:/opt/copied",
        port: 22,
        keyfile: "C://Users//admin//Downloads//LinuxKeyPair.ppk",
        //passphrase: Passphrase,
        verbose: "true"
)'''
 }
