.class public final Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
.super Ljava/lang/Object;
.source "CreateSharedLinkWithSettingsError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;,
        Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;
    }
.end annotation


# static fields
.field public static final ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

.field public static final EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

.field public static final SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

.field private final pathValue:Lcom/dropbox/core/v2/files/LookupError;

.field private final settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;
    .param p2, "pathValue"    # Lcom/dropbox/core/v2/files/LookupError;
    .param p3, "settingsErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    .line 80
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 81
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V

    return-object v0
.end method

.method public static settingsError(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;Lcom/dropbox/core/v2/files/LookupError;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 239
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 242
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 243
    check-cast v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    .line 244
    .local v0, "other":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v3, v4, :cond_0

    .line 247
    sget-object v3, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$1;->$SwitchMap$com$dropbox$core$v2$sharing$CreateSharedLinkWithSettingsError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 249
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 251
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 253
    goto :goto_0

    .line 255
    :pswitch_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_4
    move v1, v2

    .line 257
    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-eq v0, v1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public getSettingsErrorValue()Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-eq v0, v1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SETTINGS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 229
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 234
    .local v0, "hash":I
    return v0
.end method

.method public isAccessDenied()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailNotVerified()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettingsError()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedLinkAlreadyExists()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
