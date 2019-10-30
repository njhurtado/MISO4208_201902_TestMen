.class public Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;
.super Ljava/lang/Object;
.source "AdvancedSslSocketFactory.java"

# interfaces
.implements Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private mSslContext:Ljavax/net/ssl/SSLContext;

.field private mTrustManager:Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "trustManager"    # Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;
    .param p3, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 66
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mTrustManager:Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;

    .line 67
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdvancedSslSocketFactory can not be created with a null SSLContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdvancedSslSocketFactory can not be created with a null Trust Manager and a not null Hostname Verifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 88
    iput-object p2, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mTrustManager:Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;

    .line 89
    iput-object p3, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 90
    return-void
.end method

.method private enableSecureProtocols(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 340
    iget-object v2, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 341
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "supportedProtocols":[Ljava/lang/String;
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .end local p1    # "socket":Ljava/net/Socket;
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method private verifyPeerIdentity(Ljava/lang/String;ILjava/net/Socket;)V
    .locals 16
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v3, 0x0

    .line 247
    .local v3, "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v11, v0

    .line 248
    .local v11, "sock":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v11}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 275
    .end local v3    # "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    .end local v11    # "sock":Ljavax/net/ssl/SSLSocket;
    .local v4, "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    :goto_0
    const/4 v7, 0x0

    .line 276
    .local v7, "newSession":Ljavax/net/ssl/SSLSession;
    const/4 v12, 0x1

    .line 277
    .local v12, "verifiedHostname":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    if-eqz v13, :cond_0

    .line 278
    if-eqz v4, :cond_5

    .line 280
    invoke-virtual {v4}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->getServerCertificate()Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v10

    .line 282
    .local v10, "serverCert":Ljava/security/cert/X509Certificate;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-object/from16 v0, p1

    invoke-interface {v13, v0, v10}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 297
    .end local v10    # "serverCert":Ljava/security/cert/X509Certificate;
    :cond_0
    :goto_1
    if-nez v12, :cond_6

    .line 298
    :try_start_3
    new-instance v9, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Names in the server certificate do not match to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in the URL"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 301
    .local v9, "pue":Ljavax/net/ssl/SSLPeerUnverifiedException;
    if-nez v4, :cond_8

    .line 302
    new-instance v3, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    .line 303
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    check-cast v13, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v13}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;-><init>(Ljava/security/cert/X509Certificate;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 305
    .end local v4    # "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    .restart local v3    # "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->setHostInUrl(Ljava/lang/String;)V

    .line 307
    :goto_2
    invoke-virtual {v3, v9}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->setSslPeerUnverifiedException(Ljavax/net/ssl/SSLPeerUnverifiedException;)V

    .line 308
    invoke-virtual {v9, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 309
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 317
    .end local v7    # "newSession":Ljavax/net/ssl/SSLSession;
    .end local v9    # "pue":Ljavax/net/ssl/SSLPeerUnverifiedException;
    .end local v12    # "verifiedHostname":Z
    :catch_0
    move-exception v6

    .line 319
    .local v6, "io":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 323
    :goto_4
    throw v6

    .line 250
    .end local v6    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 252
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_6
    instance-of v13, v2, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    if-eqz v13, :cond_2

    .line 253
    move-object v0, v2

    check-cast v0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    move-object v3, v0

    .line 267
    :cond_1
    :goto_5
    if-nez v3, :cond_4

    .line 268
    throw v2

    .line 255
    :cond_2
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 256
    .local v1, "cause":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 257
    .local v8, "previousCause":Ljava/lang/Throwable;
    :goto_6
    if-eqz v1, :cond_3

    if-eq v1, v8, :cond_3

    instance-of v13, v1, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    if-nez v13, :cond_3

    .line 260
    move-object v8, v1

    .line 261
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_6

    .line 263
    :cond_3
    if-eqz v1, :cond_1

    instance-of v13, v1, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    if-eqz v13, :cond_1

    .line 264
    move-object v0, v1

    check-cast v0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    move-object v3, v0

    goto :goto_5

    .line 270
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v8    # "previousCause":Ljava/lang/Throwable;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->setHostInUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-object v4, v3

    .end local v3    # "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    .restart local v4    # "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    goto/16 :goto_0

    .line 283
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v7    # "newSession":Ljavax/net/ssl/SSLSession;
    .restart local v10    # "serverCert":Ljava/security/cert/X509Certificate;
    .restart local v12    # "verifiedHostname":Z
    :catch_2
    move-exception v2

    .line 284
    .local v2, "e":Ljavax/net/ssl/SSLException;
    const/4 v12, 0x0

    goto :goto_1

    .line 289
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    .end local v10    # "serverCert":Ljava/security/cert/X509Certificate;
    :cond_5
    :try_start_7
    move-object/from16 v0, p3

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v13, v0

    invoke-virtual {v13}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    .line 290
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mTrustManager:Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v13

    const/4 v15, 0x0

    aget-object v13, v13, v15

    check-cast v13, Ljava/security/cert/X509Certificate;

    check-cast v13, Ljava/security/cert/X509Certificate;

    invoke-virtual {v14, v13}, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->isKnownServer(Ljava/security/cert/X509Certificate;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-object/from16 v0, p1

    invoke-interface {v13, v0, v7}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v12

    goto/16 :goto_1

    .line 311
    :cond_6
    if-eqz v4, :cond_7

    .line 312
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string v13, "Server certificate could not be verified"

    invoke-direct {v5, v13}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 313
    .local v5, "hse":Ljavax/net/ssl/SSLHandshakeException;
    invoke-virtual {v5, v4}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 314
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 317
    .end local v5    # "hse":Ljavax/net/ssl/SSLHandshakeException;
    :catch_3
    move-exception v6

    move-object v3, v4

    .end local v4    # "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    .restart local v3    # "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    goto :goto_3

    .line 320
    .end local v7    # "newSession":Ljavax/net/ssl/SSLSession;
    .end local v12    # "verifiedHostname":Z
    .restart local v6    # "io":Ljava/io/IOException;
    :catch_4
    move-exception v13

    goto :goto_4

    .line 325
    .end local v3    # "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    .end local v6    # "io":Ljava/io/IOException;
    .restart local v4    # "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    .restart local v7    # "newSession":Ljavax/net/ssl/SSLSession;
    .restart local v12    # "verifiedHostname":Z
    :cond_7
    return-void

    .restart local v9    # "pue":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :cond_8
    move-object v3, v4

    .end local v4    # "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    .restart local v3    # "failInHandshake":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    goto :goto_2
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 195
    sget-object v1, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating SSL Socket with remote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 197
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->enableSecureProtocols(Ljava/net/Socket;)V

    .line 198
    invoke-direct {p0, p1, p2, v0}, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->verifyPeerIdentity(Ljava/lang/String;ILjava/net/Socket;)V

    .line 199
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "clientHost"    # Ljava/net/InetAddress;
    .param p4, "clientPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 100
    .local v0, "socket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->enableSecureProtocols(Ljava/net/Socket;)V

    .line 101
    invoke-direct {p0, p1, p2, v0}, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->verifyPeerIdentity(Ljava/lang/String;ILjava/net/Socket;)V

    .line 102
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/commons/httpclient/params/HttpConnectionParams;)Ljava/net/Socket;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "params"    # Lorg/apache/commons/httpclient/params/HttpConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/commons/httpclient/ConnectTimeoutException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v5, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating SSL Socket with remote "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", local "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", params: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-nez p5, :cond_0

    .line 169
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parameters may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_0
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getConnectionTimeout()I

    move-result v4

    .line 175
    .local v4, "timeout":I
    iget-object v5, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 176
    .local v3, "socketfactory":Ljavax/net/SocketFactory;
    sget-object v5, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ... with connection timeout "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and socket timeout "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    .line 178
    .local v2, "socket":Ljava/net/Socket;
    invoke-direct {p0, v2}, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->enableSecureProtocols(Ljava/net/Socket;)V

    .line 179
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 180
    .local v0, "localaddr":Ljava/net/SocketAddress;
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 181
    .local v1, "remoteaddr":Ljava/net/SocketAddress;
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    invoke-virtual {v2, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 182
    invoke-virtual {v2, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    move-object v5, v2

    .line 183
    check-cast v5, Ljavax/net/ssl/SSLSocket;

    invoke-static {p1, v5}, Lcom/owncloud/android/lib/common/network/ServerNameIndicator;->setServerNameIndication(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 184
    invoke-virtual {v2, v1, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 185
    invoke-direct {p0, p1, p2, v2}, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->verifyPeerIdentity(Ljava/lang/String;ILjava/net/Socket;)V

    .line 186
    return-object v2
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 207
    .local v0, "sslSocket":Ljava/net/Socket;
    invoke-direct {p0, v0}, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->enableSecureProtocols(Ljava/net/Socket;)V

    .line 208
    invoke-direct {p0, p2, p3, v0}, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->verifyPeerIdentity(Ljava/lang/String;ILjava/net/Socket;)V

    .line 209
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 214
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHostNameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mSslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 219
    const-class v0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setHostNameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 0
    .param p1, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/AdvancedSslSocketFactory;->mHostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 230
    return-void
.end method
