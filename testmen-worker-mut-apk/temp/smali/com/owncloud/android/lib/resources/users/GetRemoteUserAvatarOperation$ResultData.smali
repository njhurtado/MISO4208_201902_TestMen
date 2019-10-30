.class public Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation$ResultData;
.super Ljava/lang/Object;
.source "GetRemoteUserAvatarOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultData"
.end annotation


# instance fields
.field private mAvatarData:[B

.field private mEtag:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarData"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "etag"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation$ResultData;->mAvatarData:[B

    .line 200
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "mimeType":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation$ResultData;->mMimeType:Ljava/lang/String;

    .line 201
    if-nez p3, :cond_1

    const-string p3, ""

    .end local p3    # "etag":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation$ResultData;->mEtag:Ljava/lang/String;

    .line 202
    return-void
.end method


# virtual methods
.method public getAvatarData()[B
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation$ResultData;->mAvatarData:[B

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation$ResultData;->mEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation$ResultData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method
