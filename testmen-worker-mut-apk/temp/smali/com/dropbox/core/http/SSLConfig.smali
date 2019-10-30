.class public Lcom/dropbox/core/http/SSLConfig;
.super Ljava/lang/Object;
.source "SSLConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/SSLConfig$LoadException;,
        Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;,
        Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;
    }
.end annotation


# static fields
.field private static final ALLOWED_CIPHER_SUITES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CACHED_CIPHER_SUITE_FILTERATION_RESULTS:Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults; = null

.field private static final MAX_CERT_LENGTH:I = 0x2800

.field private static final PROTOCOL_LIST_TLS_V1:[Ljava/lang/String;

.field private static final PROTOCOL_LIST_TLS_V1_0:[Ljava/lang/String;

.field private static final PROTOCOL_LIST_TLS_V1_2:[Ljava/lang/String;

.field private static final ROOT_CERTS_RESOURCE:Ljava/lang/String; = "/trusted-certs.raw"

.field private static final SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static final TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->createTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    .line 61
    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    .line 63
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TLSv1.2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1_2:[Ljava/lang/String;

    .line 64
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TLSv1.0"

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1_0:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TLSv1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1:[Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x26

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v2, v1, v3

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "ECDHE-RSA-AES256-GCM-SHA384"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "ECDHE-RSA-AES256-SHA384"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "ECDHE-RSA-AES256-SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "ECDHE-RSA-AES128-GCM-SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "ECDHE-RSA-AES128-SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "ECDHE-RSA-AES128-SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "ECDHE-RSA-RC4-SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "DHE-RSA-AES256-GCM-SHA384"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "DHE-RSA-AES256-SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "DHE-RSA-AES256-SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "DHE-RSA-AES128-GCM-SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "DHE-RSA-AES128-SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "DHE-RSA-AES128-SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "AES256-GCM-SHA384"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "AES256-SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "AES256-SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "AES128-GCM-SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "AES128-SHA256"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "AES128-SHA"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->ALLOWED_CIPHER_SUITES:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .param p0, "x0"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lcom/dropbox/core/http/SSLConfig;->limitProtocolsAndCiphers(Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method public static apply(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1
    .param p0, "conn"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 125
    return-void
.end method

.method private static createSSLContext([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .param p0, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 270
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 276
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, p0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    return-object v1

    .line 271
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "Couldn\'t create SSLContext"

    invoke-static {v2, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 277
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_1
    move-exception v0

    .line 278
    .local v0, "ex":Ljava/security/KeyManagementException;
    const-string v2, "Couldn\'t initialize SSLContext"

    invoke-static {v2, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 208
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    sget-object v3, Lcom/dropbox/core/http/SSLConfig;->TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/dropbox/core/http/SSLConfig;->createSSLContext([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 209
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    new-instance v1, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v1
.end method

.method private static createTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 2

    .prologue
    .line 203
    const-string v1, "/trusted-certs.raw"

    invoke-static {v1}, Lcom/dropbox/core/http/SSLConfig;->loadKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 204
    .local v0, "trustedCertKeyStore":Ljava/security/KeyStore;
    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->createTrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    return-object v1
.end method

.method private static createTrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .locals 7
    .param p0, "trustedCertKeyStore"    # Ljava/security/KeyStore;

    .prologue
    const/4 v6, 0x0

    .line 287
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 293
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :try_start_1
    invoke-virtual {v1, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 299
    .local v2, "trustManagers":[Ljavax/net/ssl/TrustManager;
    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 300
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "More than 1 TrustManager created."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 288
    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Unable to create TrustManagerFactory"

    invoke-static {v3, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 294
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_1
    move-exception v0

    .line 295
    .local v0, "ex":Ljava/security/KeyStoreException;
    const-string v3, "Unable to initialize TrustManagerFactory with key store"

    invoke-static {v3, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 302
    .end local v0    # "ex":Ljava/security/KeyStoreException;
    .restart local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_0
    aget-object v3, v2, v6

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-nez v3, :cond_1

    .line 303
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TrustManager not of type X509: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 306
    :cond_1
    aget-object v3, v2, v6

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    return-object v3
.end method

.method private static deserializeCertificates(Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)Ljava/util/List;
    .locals 8
    .param p0, "x509CertFactory"    # Ljava/security/cert/CertificateFactory;
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertificateFactory;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/http/SSLConfig$LoadException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x2800

    const/4 v5, 0x0

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 383
    .local v2, "din":Ljava/io/DataInputStream;
    new-array v1, v6, [B

    .line 385
    .local v1, "data":[B
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 386
    .local v3, "length":I
    if-nez v3, :cond_0

    .line 394
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v4

    if-ltz v4, :cond_2

    .line 395
    new-instance v4, Lcom/dropbox/core/http/SSLConfig$LoadException;

    const-string v5, "Found data after after zero-length header."

    invoke-direct {v4, v5, v7}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 387
    :cond_0
    if-le v3, v6, :cond_1

    .line 388
    new-instance v4, Lcom/dropbox/core/http/SSLConfig$LoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid length for certificate entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 390
    :cond_1
    invoke-virtual {v2, v1, v5, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 391
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1, v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {p0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_2
    return-object v0
.end method

.method private static getFilteredCipherSuites([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "supportedCipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->CACHED_CIPHER_SUITE_FILTERATION_RESULTS:Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;

    .line 163
    .local v0, "cached":Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;
    if-eqz v0, :cond_0

    .line 164
    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->access$000(Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->access$100(Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;)[Ljava/lang/String;

    move-result-object v2

    .line 179
    :goto_0
    return-object v2

    .line 170
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v4, Lcom/dropbox/core/http/SSLConfig;->ALLOWED_CIPHER_SUITES:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v1, "enabled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v5, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, p0, v4

    .line 172
    .local v3, "supported":Ljava/lang/String;
    sget-object v6, Lcom/dropbox/core/http/SSLConfig;->ALLOWED_CIPHER_SUITES:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 177
    .end local v3    # "supported":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 178
    .local v2, "filteredArray":[Ljava/lang/String;
    new-instance v4, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;

    invoke-direct {v4, p0, v2}, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v4, Lcom/dropbox/core/http/SSLConfig;->CACHED_CIPHER_SUITE_FILTERATION_RESULTS:Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;

    goto :goto_0
.end method

.method public static getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method private static limitProtocolsAndCiphers(Ljavax/net/ssl/SSLSocket;)V
    .locals 5
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 140
    .local v0, "protocol":Ljava/lang/String;
    const-string v4, "TLSv1.2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    sget-object v1, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1_2:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 156
    :goto_1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/http/SSLConfig;->getFilteredCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 157
    return-void

    .line 144
    :cond_0
    const-string v4, "TLSv1.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    sget-object v1, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1_0:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_1
    const-string v4, "TLSv1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    sget-object v1, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "protocol":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "Socket doesn\'t support protocols \"TLSv1.2\", \"TLSv1.0\" or \"TLSv1\"."

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static loadKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 7
    .param p0, "certFileResource"    # Ljava/lang/String;

    .prologue
    .line 312
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 313
    .local v2, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    new-array v3, v4, [C

    .line 314
    .local v3, "password":[C
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 325
    const-class v4, Lcom/dropbox/core/http/SSLConfig;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 326
    .local v1, "in":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 327
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find resource \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 315
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "password":[C
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Ljava/security/KeyStoreException;
    const-string v4, "Couldn\'t initialize KeyStore"

    invoke-static {v4, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 317
    .end local v0    # "ex":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 318
    .local v0, "ex":Ljava/security/cert/CertificateException;
    const-string v4, "Couldn\'t initialize KeyStore"

    invoke-static {v4, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 319
    .end local v0    # "ex":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v0

    .line 320
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Couldn\'t initialize KeyStore"

    invoke-static {v4, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 321
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v0

    .line 322
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "Couldn\'t initialize KeyStore"

    invoke-static {v4, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 330
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "keyStore":Ljava/security/KeyStore;
    .restart local v3    # "password":[C
    :cond_0
    :try_start_1
    invoke-static {v2, v1}, Lcom/dropbox/core/http/SSLConfig;->loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/dropbox/core/http/SSLConfig$LoadException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    .line 341
    return-object v2

    .line 331
    :catch_4
    move-exception v0

    .line 332
    .local v0, "ex":Ljava/security/KeyStoreException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading from \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    .end local v0    # "ex":Ljava/security/KeyStoreException;
    :catchall_0
    move-exception v4

    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    throw v4

    .line 333
    :catch_5
    move-exception v0

    .line 334
    .local v0, "ex":Lcom/dropbox/core/http/SSLConfig$LoadException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading from \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 335
    .end local v0    # "ex":Lcom/dropbox/core/http/SSLConfig$LoadException;
    :catch_6
    move-exception v0

    .line 336
    .local v0, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading from \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;)V
    .locals 8
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/http/SSLConfig$LoadException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 357
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 364
    .local v4, "x509CertFactory":Ljava/security/cert/CertificateFactory;
    :try_start_1
    invoke-static {v4, p1}, Lcom/dropbox/core/http/SSLConfig;->deserializeCertificates(Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)Ljava/util/List;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 369
    .local v2, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 370
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "alias":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v3

    .line 374
    .local v3, "ex":Ljava/security/KeyStoreException;
    new-instance v5, Lcom/dropbox/core/http/SSLConfig$LoadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 358
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "ex":Ljava/security/KeyStoreException;
    .end local v4    # "x509CertFactory":Ljava/security/cert/CertificateFactory;
    :catch_1
    move-exception v3

    .line 359
    .local v3, "ex":Ljava/security/cert/CertificateException;
    const-string v5, "Couldn\'t initialize X.509 CertificateFactory"

    invoke-static {v5, v3}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 365
    .end local v3    # "ex":Ljava/security/cert/CertificateException;
    .restart local v4    # "x509CertFactory":Ljava/security/cert/CertificateFactory;
    :catch_2
    move-exception v3

    .line 366
    .restart local v3    # "ex":Ljava/security/cert/CertificateException;
    new-instance v5, Lcom/dropbox/core/http/SSLConfig$LoadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 377
    .end local v3    # "ex":Ljava/security/cert/CertificateException;
    .restart local v2    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :cond_0
    return-void
.end method
