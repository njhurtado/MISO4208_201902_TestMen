.class public Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;
.super Ljava/lang/Object;
.source "AdvancedX509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mKnownServersKeyStore:Ljava/security/KeyStore;

.field private mStandardTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 3
    .param p1, "knownServersKeyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->mStandardTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 65
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 66
    .local v0, "factory":Ljavax/net/ssl/TrustManagerFactory;
    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 67
    invoke-direct {p0, v0}, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->findX509TrustManager(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->mStandardTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 69
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->mKnownServersKeyStore:Ljava/security/KeyStore;

    .line 70
    return-void
.end method

.method private findX509TrustManager(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 3
    .param p1, "factory"    # Ljavax/net/ssl/TrustManagerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 81
    .local v1, "tms":[Ljavax/net/ssl/TrustManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 82
    aget-object v2, v1, v0

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    .line 83
    aget-object v2, v1, v0

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 86
    :goto_1
    return-object v2

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->mStandardTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 104
    aget-object v4, p1, v5

    invoke-virtual {p0, v4}, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->isKnownServer(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 105
    new-instance v3, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;

    aget-object v4, p1, v5

    invoke-direct {v3, v4}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 107
    .local v3, "result":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->mStandardTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v4, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 131
    :goto_1
    invoke-virtual {v3}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->isException()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    throw v3

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "c":Ljava/security/cert/CertificateExpiredException;
    invoke-virtual {v3, v0}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->setCertificateExpiredException(Ljava/security/cert/CertificateExpiredException;)V

    goto :goto_0

    .line 111
    .end local v0    # "c":Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "c":Ljava/security/cert/CertificateNotYetValidException;
    invoke-virtual {v3, v0}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->setCertificateNotYetException(Ljava/security/cert/CertificateNotYetValidException;)V

    goto :goto_0

    .line 117
    .end local v0    # "c":Ljava/security/cert/CertificateNotYetValidException;
    :catch_2
    move-exception v0

    .line 118
    .local v0, "c":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 119
    .local v1, "cause":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 120
    .local v2, "previousCause":Ljava/lang/Throwable;
    :goto_2
    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    instance-of v4, v1, Ljava/security/cert/CertPathValidatorException;

    if-nez v4, :cond_0

    .line 121
    move-object v2, v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_2

    .line 124
    :cond_0
    if-eqz v1, :cond_1

    instance-of v4, v1, Ljava/security/cert/CertPathValidatorException;

    if-eqz v4, :cond_1

    .line 125
    check-cast v1, Ljava/security/cert/CertPathValidatorException;

    .end local v1    # "cause":Ljava/lang/Throwable;
    invoke-virtual {v3, v1}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->setCertPathValidatorException(Ljava/security/cert/CertPathValidatorException;)V

    goto :goto_1

    .line 127
    .restart local v1    # "cause":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v3, v0}, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->setOtherCertificateException(Ljava/security/cert/CertificateException;)V

    goto :goto_1

    .line 135
    .end local v0    # "c":Ljava/security/cert/CertificateException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v2    # "previousCause":Ljava/lang/Throwable;
    .end local v3    # "result":Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
    :cond_2
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->mStandardTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public isKnownServer(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v1, 0x0

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->mKnownServersKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/security/KeyStoreException;
    sget-object v2, Lcom/owncloud/android/lib/common/network/AdvancedX509TrustManager;->TAG:Ljava/lang/String;

    const-string v3, "Fail while checking certificate in the known-servers store"

    invoke-static {v2, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
