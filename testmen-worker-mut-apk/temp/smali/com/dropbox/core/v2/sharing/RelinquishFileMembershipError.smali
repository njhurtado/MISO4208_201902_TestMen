.class public final Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;
.super Ljava/lang/Object;
.source "RelinquishFileMembershipError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;,
        Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;
    }
.end annotation


# static fields
.field public static final GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    .line 87
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 199
    if-ne p1, p0, :cond_0

    .line 221
    :goto_0
    :pswitch_0
    return v2

    .line 202
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 203
    check-cast v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    .line 204
    .local v0, "other":Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 205
    goto :goto_0

    .line 207
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RelinquishFileMembershipError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 217
    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;
    :cond_4
    move v2, v1

    .line 221
    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    if-eq v0, v1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 190
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 194
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupAccess()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoPermission()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

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
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
