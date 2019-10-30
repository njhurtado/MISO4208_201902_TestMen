.class public Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;
.super Ljava/lang/Object;
.source "OwnCloudCredentialsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory$OwnCloudAnonymousCredentials;
    }
.end annotation


# static fields
.field public static final CREDENTIAL_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static sAnonymousCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory$OwnCloudAnonymousCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAnonymousCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->sAnonymousCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory$OwnCloudAnonymousCredentials;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory$OwnCloudAnonymousCredentials;

    invoke-direct {v0}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory$OwnCloudAnonymousCredentials;-><init>()V

    sput-object v0, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->sAnonymousCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory$OwnCloudAnonymousCredentials;

    .line 53
    :cond_0
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->sAnonymousCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory$OwnCloudAnonymousCredentials;

    return-object v0
.end method

.method public static newBasicCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;

    invoke-direct {v0, p0, p1}, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newBasicCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "preemptiveMode"    # Z

    .prologue
    .line 38
    new-instance v0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;

    invoke-direct {v0, p0, p1, p2}, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static newBearerCredentials(Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    .locals 1
    .param p0, "authToken"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/owncloud/android/lib/common/OwnCloudBearerCredentials;

    invoke-direct {v0, p0}, Lcom/owncloud/android/lib/common/OwnCloudBearerCredentials;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newSamlSsoCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "sessionCookie"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/owncloud/android/lib/common/OwnCloudSamlSsoCredentials;

    invoke-direct {v0, p0, p1}, Lcom/owncloud/android/lib/common/OwnCloudSamlSsoCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
