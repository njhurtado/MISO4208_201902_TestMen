.class public Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
.super Ljava/lang/Object;
.source "OwnCloudVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_DOTS:I = 0x3

.field public static final MINIMUM_SERVER_VERSION_FOR_REMOTE_THUMBNAILS:I = 0x7080000

.field public static final MINIMUM_VERSION_CAPABILITIES_API:I = 0x8010000

.field public static final MINIMUM_VERSION_FOR_SEARCHING_USERS:I = 0x8020000

.field public static final MINIMUM_VERSION_FOR_SEARCH_API:I = 0xc000000

.field public static final MINIMUM_VERSION_FOR_SELF_API:I = 0xb000200

.field public static final MINIMUM_VERSION_FOR_SHARING_API:I = 0x5001b00

.field public static final MINIMUM_VERSION_FOR_WEB_LOGIN:I = 0xc000000

.field public static final MINIMUM_VERSION_WITH_FORBIDDEN_CHARS:I = 0x8010000

.field private static final MINIMUM_VERSION_WITH_NOT_RESHAREABLE_FEDERATED:I = 0x9010000

.field private static final MINIMUM_VERSION_WITH_SESSION_MONITORING:I = 0x9010000

.field public static final MINIMUN_VERSION_FOR_CHUNKED_UPLOADS:I = 0x4050000

.field public static final VERSION_8:I = 0x8000000

.field public static final nextcloud_10:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

.field public static final nextcloud_12:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

.field public static final nextcloud_9:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

.field public static final owncloud_v1:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

.field public static final owncloud_v2:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

.field public static final owncloud_v3:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

.field public static final owncloud_v4:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

.field public static final owncloud_v4_5:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;


# instance fields
.field private mIsValid:Z

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    const/high16 v1, 0x1000000

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->owncloud_v1:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 31
    new-instance v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    const/high16 v1, 0x2000000

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->owncloud_v2:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 33
    new-instance v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    const/high16 v1, 0x3000000

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->owncloud_v3:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 35
    new-instance v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    const/high16 v1, 0x4000000

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->owncloud_v4:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 37
    new-instance v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    const/high16 v1, 0x4050000

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->owncloud_v4_5:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 39
    new-instance v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    const/high16 v1, 0x9000000

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->nextcloud_9:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 41
    new-instance v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    const/high16 v1, 0xa000000

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->nextcloud_10:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 43
    new-instance v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    const/high16 v1, 0xc000000

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;-><init>(I)V

    sput-object v0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->nextcloud_12:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mIsValid:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v3, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    .line 85
    iput-boolean v3, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mIsValid:Z

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v3, v4

    .line 89
    .local v0, "countDots":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "versionWithDots":Ljava/lang/StringBuilder;
    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 91
    const-string v3, ".0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->parseVersion(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private getParsedVersion(Ljava/lang/String;)I
    .locals 5
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v2, 0x0

    .line 133
    .local v2, "versionValue":I
    const-string v3, "[^\\d.]"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "nums":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    .line 137
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 138
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 139
    shl-int/lit8 v2, v2, 0x8

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return v2
.end method

.method private parseVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 121
    :try_start_0
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->getParsedVersion(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mIsValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mIsValid:Z

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)I
    .locals 2
    .param p1, "another"    # Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .prologue
    .line 115
    iget v0, p1, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    iget v1, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    iget v1, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->compareTo(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAfter8Version()Z
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const/high16 v1, 0x8000000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChunkedUploadSupported()Z
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const/high16 v1, 0x4050000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotReshareableFederatedSupported()Z
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const/high16 v1, 0x9010000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreemptiveAuthenticationPreferred()Z
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const/high16 v1, 0x9010000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchSupported()Z
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const/high16 v1, 0xc000000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchUsersSupported()Z
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const/high16 v1, 0x8020000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfSupported()Z
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const v1, 0xb000200

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedSupported()Z
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const v1, 0x5001b00

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVersionValid()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mIsValid:Z

    return v0
.end method

.method public isVersionWithCapabilitiesAPI()Z
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const/high16 v1, 0x8010000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVersionWithForbiddenCharacters()Z
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const/high16 v1, 0x8010000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWebLoginSupported()Z
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const/high16 v1, 0xc000000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsRemoteThumbnails()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    const/high16 v1, 0x7080000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    iget v2, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    shr-int/lit8 v2, v2, 0x18

    rem-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "versionToString":Ljava/lang/String;
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->mVersion:I

    mul-int/lit8 v4, v0, 0x8

    shr-int/2addr v3, v4

    rem-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 102
    :cond_0
    return-object v1
.end method
