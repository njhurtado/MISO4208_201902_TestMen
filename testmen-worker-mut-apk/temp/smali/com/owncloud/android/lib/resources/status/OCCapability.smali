.class public Lcom/owncloud/android/lib/resources/status/OCCapability;
.super Ljava/lang/Object;
.source "OCCapability.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mCorePollinterval:I

.field private mExternalLinks:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesBigFileChuncking:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesFileDrop:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesSharingApiEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesSharingFederationIncoming:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesSharingFederationOutgoing:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesSharingPublicEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesSharingPublicExpireDateDays:I

.field private mFilesSharingPublicExpireDateEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesSharingPublicExpireDateEnforced:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesSharingPublicPasswordEnforced:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesSharingPublicSendMail:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesSharingPublicUpload:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesSharingResharing:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesSharingUserSendMail:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesUndelete:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mFilesVersioning:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mId:J

.field private mServerBackground:Ljava/lang/String;

.field private mServerColor:Ljava/lang/String;

.field private mServerLogo:Ljava/lang/String;

.field private mServerName:Ljava/lang/String;

.field private mServerSlogan:Ljava/lang/String;

.field private mSupportsNotificationsV1:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mSupportsNotificationsV2:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

.field private mVersionEdition:Ljava/lang/String;

.field private mVersionMayor:I

.field private mVersionMicro:I

.field private mVersionMinor:I

.field private mVersionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/owncloud/android/lib/resources/status/OCCapability;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/status/OCCapability;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mId:J

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mAccountName:Ljava/lang/String;

    .line 85
    iput v2, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionMayor:I

    .line 86
    iput v2, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionMinor:I

    .line 87
    iput v2, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionMicro:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionString:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionString:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerName:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerSlogan:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerColor:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerLogo:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerBackground:Ljava/lang/String;

    .line 96
    iput v2, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mCorePollinterval:I

    .line 98
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingApiEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 99
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 100
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicPasswordEnforced:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 101
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicExpireDateEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 102
    iput v2, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicExpireDateDays:I

    .line 103
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicExpireDateEnforced:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 104
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicSendMail:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 105
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicUpload:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 106
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingUserSendMail:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 107
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingResharing:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 108
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingFederationOutgoing:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 109
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingFederationIncoming:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 111
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesBigFileChuncking:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 112
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesUndelete:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 113
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesVersioning:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 114
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesFileDrop:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 116
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mSupportsNotificationsV1:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 117
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mSupportsNotificationsV2:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 119
    sget-object v0, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->UNKNOWN:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    iput-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mExternalLinks:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 120
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getCorePollinterval()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mCorePollinterval:I

    return v0
.end method

.method public getExternalLinks()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mExternalLinks:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesBigFileChuncking()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesBigFileChuncking:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesFileDrop()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesFileDrop:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesSharingApiEnabled()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingApiEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesSharingFederationIncoming()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingFederationIncoming:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesSharingFederationOutgoing()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingFederationOutgoing:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesSharingPublicEnabled()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesSharingPublicExpireDateDays()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicExpireDateDays:I

    return v0
.end method

.method public getFilesSharingPublicExpireDateEnabled()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicExpireDateEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesSharingPublicExpireDateEnforced()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicExpireDateEnforced:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesSharingPublicPasswordEnforced()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicPasswordEnforced:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesSharingPublicSendMail()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicSendMail:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesSharingPublicUpload()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicUpload:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesSharingResharing()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingResharing:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesSharingUserSendMail()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingUserSendMail:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesUndelete()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesUndelete:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getFilesVersioning()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesVersioning:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mId:J

    return-wide v0
.end method

.method public getServerBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getServerColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerColor:Ljava/lang/String;

    return-object v0
.end method

.method public getServerLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerSlogan:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsNotificationsV1()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mSupportsNotificationsV1:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getSupportsNotificationsV2()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mSupportsNotificationsV2:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    return-object v0
.end method

.method public getVersionEdition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionEdition:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionMayor()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionMayor:I

    return v0
.end method

.method public getVersionMicro()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionMicro:I

    return v0
.end method

.method public getVersionMinor()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionMinor:I

    return v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionString:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mAccountName:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setCorePollinterval(I)V
    .locals 0
    .param p1, "corePollinterval"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mCorePollinterval:I

    .line 246
    return-void
.end method

.method public setExternalLinks(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "mExternalLinks"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mExternalLinks:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 383
    return-void
.end method

.method public setFilesBigFileChuncking(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesBigFileChuncking"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesBigFileChuncking:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 351
    return-void
.end method

.method public setFilesFileDrop(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "mFilesFileDrop"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesFileDrop:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 375
    return-void
.end method

.method public setFilesSharingApiEnabled(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesSharingApiEnabled"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingApiEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 254
    return-void
.end method

.method public setFilesSharingFederationIncoming(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesSharingFederationIncoming"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingFederationIncoming:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 343
    return-void
.end method

.method public setFilesSharingFederationOutgoing(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesSharingFederationOutgoing"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingFederationOutgoing:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 335
    return-void
.end method

.method public setFilesSharingPublicEnabled(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesSharingPublicEnabled"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 262
    return-void
.end method

.method public setFilesSharingPublicExpireDateDays(I)V
    .locals 0
    .param p1, "filesSharingPublicExpireDateDays"    # I

    .prologue
    .line 285
    iput p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicExpireDateDays:I

    .line 286
    return-void
.end method

.method public setFilesSharingPublicExpireDateEnabled(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesSharingPublicExpireDateEnabled"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicExpireDateEnabled:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 278
    return-void
.end method

.method public setFilesSharingPublicExpireDateEnforced(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesSharingPublicExpireDateEnforced"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicExpireDateEnforced:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 294
    return-void
.end method

.method public setFilesSharingPublicPasswordEnforced(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesSharingPublicPasswordEnforced"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicPasswordEnforced:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 270
    return-void
.end method

.method public setFilesSharingPublicSendMail(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesSharingPublicSendMail"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicSendMail:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 303
    return-void
.end method

.method public setFilesSharingPublicUpload(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesSharingPublicUpload"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingPublicUpload:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 311
    return-void
.end method

.method public setFilesSharingResharing(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesSharingResharing"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingResharing:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 327
    return-void
.end method

.method public setFilesSharingUserSendMail(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesSharingUserSendMail"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesSharingUserSendMail:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 319
    return-void
.end method

.method public setFilesUndelete(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesUndelete"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesUndelete:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 359
    return-void
.end method

.method public setFilesVersioning(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "filesVersioning"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mFilesVersioning:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 367
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mId:J

    .line 156
    return-void
.end method

.method public setServerBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServerBackground"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerBackground:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setServerColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServerColor"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerColor:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setServerLogo(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServerLogo"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerLogo:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerName:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setServerSlogan(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServerSlogan"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mServerSlogan:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setSupportsNotificationsV1(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "mSupportsNotificationsV1"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mSupportsNotificationsV1:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 132
    return-void
.end method

.method public setSupportsNotificationsV2(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    .locals 0
    .param p1, "mSupportsNotificationsV2"    # Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mSupportsNotificationsV2:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    .line 140
    return-void
.end method

.method public setVersionEdition(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionEdition"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionEdition:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setVersionMayor(I)V
    .locals 0
    .param p1, "versionMayor"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionMayor:I

    .line 164
    return-void
.end method

.method public setVersionMicro(I)V
    .locals 0
    .param p1, "versionMicro"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionMicro:I

    .line 180
    return-void
.end method

.method public setVersionMinor(I)V
    .locals 0
    .param p1, "versionMinor"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionMinor:I

    .line 172
    return-void
.end method

.method public setVersionString(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionString"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/status/OCCapability;->mVersionString:Ljava/lang/String;

    .line 188
    return-void
.end method
