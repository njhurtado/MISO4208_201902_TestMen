.class public Lcom/owncloud/android/lib/resources/files/RemoteFile;
.super Ljava/lang/Object;
.source "RemoteFile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/owncloud/android/lib/resources/files/RemoteFile;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2b73118714498d43L


# instance fields
.field private mCreationTimestamp:J

.field private mEtag:Ljava/lang/String;

.field private mIsFavorite:Z

.field private mLength:J

.field private mMimeType:Ljava/lang/String;

.field private mModifiedTimestamp:J

.field private mPermissions:Ljava/lang/String;

.field private mQuotaAvailableBytes:Ljava/math/BigDecimal;

.field private mQuotaUsedBytes:Ljava/math/BigDecimal;

.field private mRemoteId:Ljava/lang/String;

.field private mRemotePath:Ljava/lang/String;

.field private mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/owncloud/android/lib/resources/files/RemoteFile$1;

    invoke-direct {v0}, Lcom/owncloud/android/lib/resources/files/RemoteFile$1;-><init>()V

    sput-object v0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-direct {p0}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->resetData()V

    .line 154
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->readFromParcel(Landroid/os/Parcel;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Lcom/owncloud/android/lib/common/network/WebdavEntry;)V
    .locals 2
    .param p1, "we"    # Lcom/owncloud/android/lib/common/network/WebdavEntry;

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->decodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/owncloud/android/lib/resources/files/RemoteFile;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->createTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setCreationTimestamp(J)V

    .line 174
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->contentLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setLength(J)V

    .line 175
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->contentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setMimeType(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->modifiedTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setModifiedTimestamp(J)V

    .line 177
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->etag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setEtag(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->permissions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setPermissions(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->remoteId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setRemoteId(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setSize(J)V

    .line 181
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->quotaUsedBytes()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setQuotaUsedBytes(Ljava/math/BigDecimal;)V

    .line 182
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->quotaAvailableBytes()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setQuotaAvailableBytes(Ljava/math/BigDecimal;)V

    .line 183
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->isFavorite()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setFavorite(Z)V

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-direct {p0}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->resetData()V

    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a OCFile with a non valid remote path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mRemotePath:Ljava/lang/String;

    .line 169
    return-void
.end method

.method private resetData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mRemotePath:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mMimeType:Ljava/lang/String;

    .line 192
    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mLength:J

    .line 193
    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mCreationTimestamp:J

    .line 194
    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mModifiedTimestamp:J

    .line 195
    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mEtag:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mPermissions:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mRemoteId:Ljava/lang/String;

    .line 198
    iput-wide v2, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mSize:J

    .line 199
    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mQuotaUsedBytes:Ljava/math/BigDecimal;

    .line 200
    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mQuotaAvailableBytes:Ljava/math/BigDecimal;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mIsFavorite:Z

    .line 202
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getCreationTimestamp()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mCreationTimestamp:J

    return-wide v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFavorite()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mIsFavorite:Z

    return v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mLength:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTimestamp()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mModifiedTimestamp:J

    return-wide v0
.end method

.method public getPermissions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mPermissions:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mRemoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemotePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mRemotePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mSize:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mRemotePath:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mMimeType:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mLength:J

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mCreationTimestamp:J

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mModifiedTimestamp:J

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mEtag:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mPermissions:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mRemoteId:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mSize:J

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mQuotaUsedBytes:Ljava/math/BigDecimal;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mQuotaAvailableBytes:Ljava/math/BigDecimal;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mIsFavorite:Z

    .line 243
    return-void
.end method

.method public setCreationTimestamp(J)V
    .locals 1
    .param p1, "creationTimestamp"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mCreationTimestamp:J

    .line 102
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mEtag:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setFavorite(Z)V
    .locals 0
    .param p1, "mIsFavorite"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mIsFavorite:Z

    .line 70
    return-void
.end method

.method public setLength(J)V
    .locals 1
    .param p1, "length"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mLength:J

    .line 94
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mMimeType:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setModifiedTimestamp(J)V
    .locals 1
    .param p1, "modifiedTimestamp"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mModifiedTimestamp:J

    .line 110
    return-void
.end method

.method public setPermissions(Ljava/lang/String;)V
    .locals 0
    .param p1, "permissions"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mPermissions:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setQuotaAvailableBytes(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "quotaAvailableBytes"    # Ljava/math/BigDecimal;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mQuotaAvailableBytes:Ljava/math/BigDecimal;

    .line 150
    return-void
.end method

.method public setQuotaUsedBytes(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "quotaUsedBytes"    # Ljava/math/BigDecimal;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mQuotaUsedBytes:Ljava/math/BigDecimal;

    .line 146
    return-void
.end method

.method public setRemoteId(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteId"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mRemoteId:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setRemotePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "remotePath"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mRemotePath:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mSize:J

    .line 142
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mRemotePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 255
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mCreationTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 256
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mModifiedTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 257
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mEtag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mPermissions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mRemoteId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mQuotaUsedBytes:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 262
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mQuotaAvailableBytes:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 263
    iget-boolean v0, p0, Lcom/owncloud/android/lib/resources/files/RemoteFile;->mIsFavorite:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    return-void
.end method
