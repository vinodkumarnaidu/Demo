package com.scripts

/**
 * Created by admin on 27-May-17.
 */

import jenkins.model.*
import com.cloudbees.plugins.credentials.*
import com.cloudbees.plugins.credentials.common.*
import com.cloudbees.plugins.credentials.domains.*
import com.cloudbees.plugins.credentials.impl.*
import com.cloudbees.jenkins.plugins.sshcredentials.impl.*
import org.jenkinsci.plugins.plaincredentials.*
import org.jenkinsci.plugins.plaincredentials.impl.*
import hudson.util.Secret
import hudson.plugins.sshslaves.*
import org.apache.commons.fileupload.*
import org.apache.commons.fileupload.disk.*
import java.nio.file.Files

def domain = Domain.global()
def store = Jenkins.instance.getExtensionList('com.cloudbees.plugins.credentials.SystemCredentialsProvider')[0].getStore()

priveteKey = new BasicSSHUserPrivateKey(
        CredentialsScope.GLOBAL,
        "C://Users//admin//Downloads//LinuxKeyPair.ppk",
        "ec2-user",
        new BasicSSHUserPrivateKey.UsersPrivateKeySource(),
        "",
        ""
)

usernameAndPassword = new UsernamePasswordCredentialsImpl(
        CredentialsScope.GLOBAL,
        "C://Users//admin//Downloads//LinuxKeyPair.ppk", "34.207.153.136",
        "ec2-user",
        "22"
)

secretText = new StringCredentialsImpl(
        CredentialsScope.GLOBAL,
        "secret-text",
        "Secret Text Description",
        Secret.fromString("some secret text goes here"))

factory = new DiskFileItemFactory()
dfi = factory.createItem("", "application/octet-stream", false, "filename")
out = dfi.getOutputStream()
file = new File("/opt/copied/")
Files.copy(file.toPath(), out)
//FileCredentailsImpl can take a file from a do
secretFile = new FileCredentialsImpl(
        CredentialsScope.GLOBAL,
        "secret-file",
        "Secret File Description"
        dfi, // Don't use FileItem
        "",
        "")


store.addCredentials(domain, priveteKey)
store.addCredentials(domain, usernameAndPassword)
store.addCredentials(domain, secretText)
store.addCredentials(domain, secretFile)
