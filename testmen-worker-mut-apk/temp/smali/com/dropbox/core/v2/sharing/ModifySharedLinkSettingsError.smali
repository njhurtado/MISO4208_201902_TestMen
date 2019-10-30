.class public final Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
.super Ljava/lang/Object;
.source "ModifySharedLinkSettingsError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;,
        Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;
    }
.end annotation


# static fields
.field public static final EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

.field private final settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;
    .param p2, "settingsErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    .line 101
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0
.end method

.method public static settingsError(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 235
    if-ne p1, p0, :cond_0

    .line 261
    :goto_0
    :pswitch_0
    return v2

    .line 238
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 239
    check-cast v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 240
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 241
    goto :goto_0

    .line 243
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ModifySharedLinkSettingsError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 257
    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    :cond_4
    move v2, v1

    .line 261
    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSettingsErrorValue()Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-eq v0, v1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SETTINGS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 225
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 229
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 230
    return v0
.end method

.method public isEmailNotVerified()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

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
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedLinkAccessDenied()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedLinkNotFound()Z
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedLinkType()Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
