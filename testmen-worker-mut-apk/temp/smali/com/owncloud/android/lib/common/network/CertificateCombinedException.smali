.class public Lcom/owncloud/android/lib/common/network/CertificateCombinedException;
.super Ljava/lang/RuntimeException;
.source "CertificateCombinedException.java"


# static fields
.field private static final serialVersionUID:J = -0x7b2d1cbb2728ad77L


# instance fields
.field private mCertPathValidatorException:Ljava/security/cert/CertPathValidatorException;

.field private mCertificateExpiredException:Ljava/security/cert/CertificateExpiredException;

.field private mCertificateNotYetValidException:Ljava/security/cert/CertificateNotYetValidException;

.field private mHostInUrl:Ljava/lang/String;

.field private mOtherCertificateException:Ljava/security/cert/CertificateException;

.field private mServerCert:Ljava/security/cert/X509Certificate;

.field private mSslPeerUnverifiedException:Ljavax/net/ssl/SSLPeerUnverifiedException;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mServerCert:Ljava/security/cert/X509Certificate;

    .line 60
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertificateExpiredException:Ljava/security/cert/CertificateExpiredException;

    .line 61
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertificateNotYetValidException:Ljava/security/cert/CertificateNotYetValidException;

    .line 62
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertPathValidatorException:Ljava/security/cert/CertPathValidatorException;

    .line 63
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mOtherCertificateException:Ljava/security/cert/CertificateException;

    .line 64
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mSslPeerUnverifiedException:Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 67
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mServerCert:Ljava/security/cert/X509Certificate;

    .line 68
    return-void
.end method


# virtual methods
.method public getCertPathValidatorException()Ljava/security/cert/CertPathValidatorException;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertPathValidatorException:Ljava/security/cert/CertPathValidatorException;

    return-object v0
.end method

.method public getCertificateExpiredException()Ljava/security/cert/CertificateExpiredException;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertificateExpiredException:Ljava/security/cert/CertificateExpiredException;

    return-object v0
.end method

.method public getCertificateNotYetValidException()Ljava/security/cert/CertificateNotYetValidException;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertificateNotYetValidException:Ljava/security/cert/CertificateNotYetValidException;

    return-object v0
.end method

.method public getHostInUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mHostInUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherCertificateException()Ljava/security/cert/CertificateException;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mOtherCertificateException:Ljava/security/cert/CertificateException;

    return-object v0
.end method

.method public getServerCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mServerCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getSslPeerUnverifiedException()Ljavax/net/ssl/SSLPeerUnverifiedException;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mSslPeerUnverifiedException:Ljavax/net/ssl/SSLPeerUnverifiedException;

    return-object v0
.end method

.method public isException()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertificateExpiredException:Ljava/security/cert/CertificateExpiredException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertificateNotYetValidException:Ljava/security/cert/CertificateNotYetValidException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertPathValidatorException:Ljava/security/cert/CertPathValidatorException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mOtherCertificateException:Ljava/security/cert/CertificateException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mSslPeerUnverifiedException:Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecoverable()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertificateExpiredException:Ljava/security/cert/CertificateExpiredException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertificateNotYetValidException:Ljava/security/cert/CertificateNotYetValidException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertPathValidatorException:Ljava/security/cert/CertPathValidatorException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mSslPeerUnverifiedException:Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCertPathValidatorException(Ljava/security/cert/CertPathValidatorException;)V
    .locals 0
    .param p1, "c"    # Ljava/security/cert/CertPathValidatorException;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertPathValidatorException:Ljava/security/cert/CertPathValidatorException;

    .line 104
    return-void
.end method

.method public setCertificateExpiredException(Ljava/security/cert/CertificateExpiredException;)V
    .locals 0
    .param p1, "c"    # Ljava/security/cert/CertificateExpiredException;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertificateExpiredException:Ljava/security/cert/CertificateExpiredException;

    .line 88
    return-void
.end method

.method public setCertificateNotYetException(Ljava/security/cert/CertificateNotYetValidException;)V
    .locals 0
    .param p1, "c"    # Ljava/security/cert/CertificateNotYetValidException;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mCertificateNotYetValidException:Ljava/security/cert/CertificateNotYetValidException;

    .line 96
    return-void
.end method

.method public setHostInUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mHostInUrl:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setOtherCertificateException(Ljava/security/cert/CertificateException;)V
    .locals 0
    .param p1, "c"    # Ljava/security/cert/CertificateException;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mOtherCertificateException:Ljava/security/cert/CertificateException;

    .line 112
    return-void
.end method

.method public setSslPeerUnverifiedException(Ljavax/net/ssl/SSLPeerUnverifiedException;)V
    .locals 0
    .param p1, "s"    # Ljavax/net/ssl/SSLPeerUnverifiedException;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/CertificateCombinedException;->mSslPeerUnverifiedException:Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 120
    return-void
.end method
