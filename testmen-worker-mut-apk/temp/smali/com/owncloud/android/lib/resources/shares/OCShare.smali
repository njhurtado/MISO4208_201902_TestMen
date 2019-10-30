.class public Lcom/owncloud/android/lib/resources/shares/OCShare;
.super Ljava/lang/Object;
.source "OCShare.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATE_PERMISSION_FLAG:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/owncloud/android/lib/resources/shares/OCShare;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PERMISSION:I = -0x1

.field public static final DELETE_PERMISSION_FLAG:I = 0x8

.field public static final FEDERATED_PERMISSIONS_FOR_FILE_AFTER_OC9:I = 0xf

.field public static final FEDERATED_PERMISSIONS_FOR_FILE_UP_TO_OC9:I = 0x3

.field public static final FEDERATED_PERMISSIONS_FOR_FOLDER_AFTER_OC9:I = 0x1f

.field public static final FEDERATED_PERMISSIONS_FOR_FOLDER_UP_TO_OC9:I = 0xf

.field public static final MAXIMUM_PERMISSIONS_FOR_FILE:I = 0x13

.field public static final MAXIMUM_PERMISSIONS_FOR_FOLDER:I = 0x1f

.field public static final READ_PERMISSION_FLAG:I = 0x1

.field public static final SHARE_PERMISSION_FLAG:I = 0x10

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_PERMISSION_FLAG:I = 0x2

.field private static final serialVersionUID:J = 0x393edb1c86936931L


# instance fields
.field private mExpirationDate:J

.field private mFileSource:J

.field private mId:J

.field private mIsFolder:Z

.field private mItemSource:J

.field private mPath:Ljava/lang/String;

.field private mPermissions:I

.field private mRemoteId:J

.field private mShareLink:Ljava/lang/String;

.field private mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;

.field private mShareWith:Ljava/lang/String;

.field private mSharedDate:J

.field private mSharedWithDisplayName:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mUserId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/owncloud/android/lib/resources/shares/OCShare;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/OCShare;->TAG:Ljava/lang/String;

    .line 267
    new-instance v0, Lcom/owncloud/android/lib/resources/shares/OCShare$1;

    invoke-direct {v0}, Lcom/owncloud/android/lib/resources/shares/OCShare$1;-><init>()V

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/OCShare;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-direct {p0}, Lcom/owncloud/android/lib/resources/shares/OCShare;->resetData()V

    .line 106
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/resources/shares/OCShare;->readFromParcel(Landroid/os/Parcel;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-direct {p0}, Lcom/owncloud/android/lib/resources/shares/OCShare;->resetData()V

    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/OCShare;->TAG:Ljava/lang/String;

    const-string v1, "Trying to create a OCShare with a non valid path"

    invoke-static {v0, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a OCShare with a non valid path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mPath:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private resetData()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x0

    .line 121
    iput-wide v4, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mId:J

    .line 122
    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mFileSource:J

    .line 123
    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mItemSource:J

    .line 124
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->NO_SHARED:Lcom/owncloud/android/lib/resources/shares/ShareType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareWith:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mPath:Ljava/lang/String;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mPermissions:I

    .line 128
    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mSharedDate:J

    .line 129
    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mExpirationDate:J

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mToken:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mSharedWithDisplayName:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mIsFolder:Z

    .line 133
    iput-wide v4, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mUserId:J

    .line 134
    iput-wide v4, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mRemoteId:J

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareLink:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getExpirationDate()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mExpirationDate:J

    return-wide v0
.end method

.method public getFileSource()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mFileSource:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mId:J

    return-wide v0
.end method

.method public getItemSource()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mItemSource:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mPermissions:I

    return v0
.end method

.method public getRemoteId()J
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mRemoteId:J

    return-wide v0
.end method

.method public getShareLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareLink:Ljava/lang/String;

    return-object v0
.end method

.method public getShareType()Lcom/owncloud/android/lib/resources/shares/ShareType;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;

    return-object v0
.end method

.method public getShareWith()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareWith:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedDate()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mSharedDate:J

    return-wide v0
.end method

.method public getSharedWithDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mSharedWithDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mUserId:J

    return-wide v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mIsFolder:Z

    return v0
.end method

.method public isPasswordProtected()Z
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lcom/owncloud/android/lib/resources/shares/ShareType;->PUBLIC_LINK:Lcom/owncloud/android/lib/resources/shares/ShareType;

    iget-object v1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/shares/ShareType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareWith:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mId:J

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mFileSource:J

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mItemSource:J

    .line 294
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/owncloud/android/lib/resources/shares/ShareType;->valueOf(Ljava/lang/String;)Lcom/owncloud/android/lib/resources/shares/ShareType;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareWith:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mPath:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mPermissions:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mSharedDate:J

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mExpirationDate:J

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mToken:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mSharedWithDisplayName:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mIsFolder:Z

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mUserId:J

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mRemoteId:J

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareLink:Ljava/lang/String;

    .line 309
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/owncloud/android/lib/resources/shares/ShareType;->NO_SHARED:Lcom/owncloud/android/lib/resources/shares/ShareType;

    iput-object v1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;

    goto :goto_0

    .line 305
    .end local v0    # "x":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setExpirationDate(J)V
    .locals 1
    .param p1, "expirationDate"    # J

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mExpirationDate:J

    .line 210
    return-void
.end method

.method public setFileSource(J)V
    .locals 1
    .param p1, "fileSource"    # J

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mFileSource:J

    .line 154
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mId:J

    .line 146
    return-void
.end method

.method public setIdRemoteShared(J)V
    .locals 1
    .param p1, "remoteId"    # J

    .prologue
    .line 249
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mRemoteId:J

    .line 250
    return-void
.end method

.method public setIsFolder(Z)V
    .locals 0
    .param p1, "isFolder"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mIsFolder:Z

    .line 234
    return-void
.end method

.method public setItemSource(J)V
    .locals 1
    .param p1, "itemSource"    # J

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mItemSource:J

    .line 162
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mPath:Ljava/lang/String;

    .line 186
    return-void

    .line 185
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setPermissions(I)V
    .locals 0
    .param p1, "permissions"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mPermissions:I

    .line 194
    return-void
.end method

.method public setShareLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareLink"    # Ljava/lang/String;

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .end local p1    # "shareLink":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareLink:Ljava/lang/String;

    .line 258
    return-void

    .line 257
    .restart local p1    # "shareLink":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setShareType(Lcom/owncloud/android/lib/resources/shares/ShareType;)V
    .locals 0
    .param p1, "shareType"    # Lcom/owncloud/android/lib/resources/shares/ShareType;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;

    .line 170
    return-void
.end method

.method public setShareWith(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareWith"    # Ljava/lang/String;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .end local p1    # "shareWith":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareWith:Ljava/lang/String;

    .line 178
    return-void

    .line 177
    .restart local p1    # "shareWith":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setSharedDate(J)V
    .locals 1
    .param p1, "sharedDate"    # J

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mSharedDate:J

    .line 202
    return-void
.end method

.method public setSharedWithDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedWithDisplayName"    # Ljava/lang/String;

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .end local p1    # "sharedWithDisplayName":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mSharedWithDisplayName:Ljava/lang/String;

    .line 226
    return-void

    .line 225
    .restart local p1    # "sharedWithDisplayName":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .end local p1    # "token":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mToken:Ljava/lang/String;

    .line 218
    return-void

    .line 217
    .restart local p1    # "token":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setUserId(J)V
    .locals 1
    .param p1, "userId"    # J

    .prologue
    .line 241
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mUserId:J

    .line 242
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 321
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mFileSource:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 322
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mItemSource:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareWith:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mPermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mSharedDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 328
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mExpirationDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 329
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mSharedWithDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-boolean v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mIsFolder:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 333
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mRemoteId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 334
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/OCShare;->mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;

    invoke-virtual {v0}, Lcom/owncloud/android/lib/resources/shares/ShareType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
