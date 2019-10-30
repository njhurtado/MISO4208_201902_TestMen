.class public Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;
.super Ljava/lang/Object;
.source "PushResponse.java"


# instance fields
.field public deviceIdentifier:Ljava/lang/String;

.field public publicKey:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "deviceIdentifier"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;->publicKey:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;->deviceIdentifier:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;->signature:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getDeviceIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;->deviceIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceIdentifier"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;->deviceIdentifier:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;->publicKey:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;->signature:Ljava/lang/String;

    .line 67
    return-void
.end method
