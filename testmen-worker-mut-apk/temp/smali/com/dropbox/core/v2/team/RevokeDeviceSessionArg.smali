.class public final Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
.super Ljava/lang/Object;
.source "RevokeDeviceSessionArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;,
        Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    }
.end annotation


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

.field private final desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

.field private final mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

.field private final webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;Lcom/dropbox/core/v2/team/DeviceSessionArg;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    .param p2, "webSessionValue"    # Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .param p3, "desktopClientValue"    # Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    .param p4, "mobileClientValue"    # Lcom/dropbox/core/v2/team/DeviceSessionArg;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    .line 64
    iput-object p2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    .line 65
    iput-object p3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    .line 66
    iput-object p4, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0
.end method

.method public static desktopClient(Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    .prologue
    const/4 v2, 0x0

    .line 157
    if-nez p0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;Lcom/dropbox/core/v2/team/DeviceSessionArg;)V

    return-object v0
.end method

.method public static mobileClient(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/team/DeviceSessionArg;

    .prologue
    const/4 v2, 0x0

    .line 206
    if-nez p0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;Lcom/dropbox/core/v2/team/DeviceSessionArg;)V

    return-object v0
.end method

.method public static webSession(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/team/DeviceSessionArg;

    .prologue
    const/4 v2, 0x0

    .line 109
    if-nez p0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;Lcom/dropbox/core/v2/team/DeviceSessionArg;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 243
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 246
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 247
    check-cast v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    .line 248
    .local v0, "other":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v3, v4, :cond_0

    .line 251
    sget-object v3, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$1;->$SwitchMap$com$dropbox$core$v2$team$RevokeDeviceSessionArg$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 253
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/DeviceSessionArg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/DeviceSessionArg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDesktopClientValue()Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-eq v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DESKTOP_CLIENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    return-object v0
.end method

.method public getMobileClientValue()Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MOBILE_CLIENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0
.end method

.method public getWebSessionValue()Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-eq v0, v1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.WEB_SESSION, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 232
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 238
    .local v0, "hash":I
    return v0
.end method

.method public isDesktopClient()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileClient()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWebSession()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
