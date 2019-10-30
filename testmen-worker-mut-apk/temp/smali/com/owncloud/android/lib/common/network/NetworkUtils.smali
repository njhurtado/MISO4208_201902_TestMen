.class public Lcom/owncloud/android/lib/common/network/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final DEFAULT_CONNECTION_TIMEOUT:I = 0xea60

.field public static final DEFAULT_DATA_TIMEOUT:I = 0xea60

.field private static LOCAL_TRUSTSTORE_FILENAME:Ljava/lang/String; = null

.field private static LOCAL_TRUSTSTORE_PASSWORD:Ljava/lang/String; = null

.field public static final PROTOCOL_TLSv1_0:Ljava/lang/String; = "TLSv1"

.field public static final PROTOCOL_TLSv1_2:Ljava/lang/String; = "TLSv1.2"

.field private static final TAG:Ljava/lang/String;

.field private static mAdvancedSslSocketFactory:Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;

.field private static mConnManager:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

.field private static mDefaultHttpsProtocol:Lorg/apache/commons/httpclient/protocol/Protocol;

.field private static mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private static mKnownServersStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const-class v0, Lcom/owncloud/android/lib/common/network/NetworkUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/network/NetworkUtils;->TAG:Ljava/lang/String;

    .line 68
    sput-object v1, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mConnManager:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .line 70
    sput-object v1, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mDefaultHttpsProtocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 72
    sput-object v1, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mAdvancedSslSocketFactory:Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;

    .line 74
    sput-object v1, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 129
    const-string v0, "knownServers.bks"

    sput-object v0, Lcom/owncloud/android/lib/common/network/NetworkUtils;->LOCAL_TRUSTSTORE_FILENAME:Ljava/lang/String;

    .line 131
    const-string v0, "password"

    sput-object v0, Lcom/owncloud/android/lib/common/network/NetworkUtils;->LOCAL_TRUSTSTORE_PASSWORD:Ljava/lang/String;

    .line 133
    sput-object v1, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mKnownServersStore:Ljava/security/KeyStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCertToKnownServersStore(Ljava/security/cert/Certificate;Landroid/content/Context;)V
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p1}, Lcom/owncloud/android/lib/common/network/NetworkUtils;->getKnownServersStore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v1

    .line 177
    .local v1, "knownServers":Ljava/security/KeyStore;
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v2, Lcom/owncloud/android/lib/common/network/NetworkUtils;->LOCAL_TRUSTSTORE_FILENAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 181
    sget-object v2, Lcom/owncloud/android/lib/common/network/NetworkUtils;->LOCAL_TRUSTSTORE_PASSWORD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method public static getAdvancedSslSocketFactory(Landroid/content/Context;)Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 106
    sget-object v5, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mAdvancedSslSocketFactory:Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;

    if-nez v5, :cond_0

    .line 107
    invoke-static {p0}, Lcom/owncloud/android/lib/common/network/NetworkUtils;->getKnownServersStore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v4

    .line 108
    .local v4, "trustStore":Ljava/security/KeyStore;
    new-instance v3, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;

    invoke-direct {v3, v4}, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    .line 109
    .local v3, "trustMgr":Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;
    const/4 v5, 0x1

    new-array v2, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 113
    .local v2, "tms":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v5, "TLSv1.2"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_0
    invoke-virtual {v1, v7, v2, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 122
    new-instance v5, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v5}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v5, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 123
    new-instance v5, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;

    sget-object v6, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-direct {v5, v1, v3, v6}, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    sput-object v5, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mAdvancedSslSocketFactory:Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;

    .line 125
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v2    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v3    # "trustMgr":Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;
    .end local v4    # "trustStore":Ljava/security/KeyStore;
    :cond_0
    sget-object v5, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mAdvancedSslSocketFactory:Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;

    return-object v5

    .line 114
    .restart local v2    # "tms":[Ljavax/net/ssl/TrustManager;
    .restart local v3    # "trustMgr":Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;
    .restart local v4    # "trustStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v5, Lcom/owncloud/android/lib/common/network/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v6, "TLSv1.2 is not supported in this device; falling through TLSv1.0"

    invoke-static {v5, v6}, Lcom/owncloud/android/lib/common/utils/Log_OC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v5, "TLSv1"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .restart local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    goto :goto_0
.end method

.method private static getKnownServersStore(Landroid/content/Context;)Ljava/security/KeyStore;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 152
    sget-object v2, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mKnownServersStore:Ljava/security/KeyStore;

    if-nez v2, :cond_0

    .line 154
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    sput-object v2, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mKnownServersStore:Ljava/security/KeyStore;

    .line 155
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/owncloud/android/lib/common/network/NetworkUtils;->LOCAL_TRUSTSTORE_FILENAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .local v1, "localTrustStoreFile":Ljava/io/File;
    sget-object v2, Lcom/owncloud/android/lib/common/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Searching known-servers store at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 160
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    sget-object v2, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mKnownServersStore:Ljava/security/KeyStore;

    sget-object v3, Lcom/owncloud/android/lib/common/network/NetworkUtils;->LOCAL_TRUSTSTORE_PASSWORD:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 169
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "localTrustStoreFile":Ljava/io/File;
    :cond_0
    :goto_0
    sget-object v2, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mKnownServersStore:Ljava/security/KeyStore;

    return-object v2

    .line 162
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "localTrustStoreFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2

    .line 166
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_1
    sget-object v2, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mKnownServersStore:Ljava/security/KeyStore;

    const/4 v3, 0x0

    sget-object v4, Lcom/owncloud/android/lib/common/network/NetworkUtils;->LOCAL_TRUSTSTORE_PASSWORD:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_0
.end method

.method public static getMultiThreadedConnManager()Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 189
    sget-object v0, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mConnManager:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;-><init>()V

    sput-object v0, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mConnManager:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .line 191
    sget-object v0, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mConnManager:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaultMaxConnectionsPerHost(I)V

    .line 192
    sget-object v0, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mConnManager:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxTotalConnections(I)V

    .line 194
    :cond_0
    sget-object v0, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mConnManager:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    return-object v0
.end method

.method public static isCertInKnownServersStore(Ljava/security/cert/Certificate;Landroid/content/Context;)Z
    .locals 4
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {p1}, Lcom/owncloud/android/lib/common/network/NetworkUtils;->getKnownServersStore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    .line 201
    .local v0, "knownServers":Ljava/security/KeyStore;
    sget-object v1, Lcom/owncloud/android/lib/common/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate - HashCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v1, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static registerAdvancedSslContext(ZLandroid/content/Context;)V
    .locals 7
    .param p0, "register"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "pr":Lorg/apache/commons/httpclient/protocol/Protocol;
    :try_start_0
    const-string v2, "https"

    invoke-static {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    sget-object v2, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mDefaultHttpsProtocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    if-nez v2, :cond_0

    .line 88
    sput-object v1, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mDefaultHttpsProtocol:Lorg/apache/commons/httpclient/protocol/Protocol;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getSocketFactory()Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    move-result-object v2

    instance-of v2, v2, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 94
    .local v0, "isRegistered":Z
    :goto_1
    if-eqz p0, :cond_3

    if-nez v0, :cond_3

    .line 95
    const-string v2, "https"

    new-instance v3, Lorg/apache/commons/httpclient/protocol/Protocol;

    const-string v4, "https"

    invoke-static {p1}, Lcom/owncloud/android/lib/common/network/NetworkUtils;->getAdvancedSslSocketFactory(Landroid/content/Context;)Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/httpclient/protocol/Protocol;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;I)V

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/protocol/Protocol;->registerProtocol(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 102
    :cond_1
    :goto_2
    return-void

    .line 93
    .end local v0    # "isRegistered":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 97
    .restart local v0    # "isRegistered":Z
    :cond_3
    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    .line 98
    sget-object v2, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mDefaultHttpsProtocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    if-eqz v2, :cond_1

    .line 99
    const-string v2, "https"

    sget-object v3, Lcom/owncloud/android/lib/common/network/NetworkUtils;->mDefaultHttpsProtocol:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/protocol/Protocol;->registerProtocol(Ljava/lang/String;Lorg/apache/commons/httpclient/protocol/Protocol;)V

    goto :goto_2

    .line 90
    .end local v0    # "isRegistered":Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method
