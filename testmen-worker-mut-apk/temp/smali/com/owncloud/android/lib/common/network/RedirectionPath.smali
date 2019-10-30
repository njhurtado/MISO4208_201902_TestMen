.class public Lcom/owncloud/android/lib/common/network/RedirectionPath;
.super Ljava/lang/Object;
.source "RedirectionPath.java"


# instance fields
.field private mLastLocation:I

.field private mLastStatus:I

.field private mLocations:[Ljava/lang/String;

.field private mStatuses:[I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "maxRedirections"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mStatuses:[I

    .line 51
    iput v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastStatus:I

    .line 53
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLocations:[Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastLocation:I

    .line 65
    if-gez p2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxRedirections MUST BE zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mStatuses:[I

    .line 69
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 70
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mStatuses:[I

    iget v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastStatus:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastStatus:I

    aput p1, v0, v1

    .line 71
    return-void
.end method


# virtual methods
.method public addLocation(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLocations:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mStatuses:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLocations:[Ljava/lang/String;

    .line 82
    :cond_0
    iget v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastLocation:I

    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLocations:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLocations:[Ljava/lang/String;

    iget v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastLocation:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastLocation:I

    aput-object p1, v0, v1

    .line 85
    :cond_1
    return-void
.end method

.method public addStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastStatus:I

    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mStatuses:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mStatuses:[I

    iget v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastStatus:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastStatus:I

    aput p1, v0, v1

    .line 97
    :cond_0
    return-void
.end method

.method public getLastPermanentLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    iget v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastStatus:I

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mStatuses:[I

    aget v1, v1, v0

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastLocation:I

    if-gt v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLocations:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 115
    :goto_1
    return-object v1

    .line 110
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 115
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLastStatus()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mStatuses:[I

    iget v1, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastStatus:I

    aget v0, v0, v1

    return v0
.end method

.method public getRedirectionsCount()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/owncloud/android/lib/common/network/RedirectionPath;->mLastLocation:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
