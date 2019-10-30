.class public final Lcom/dropbox/core/v2/sharing/AddFileMemberError;
.super Ljava/lang/Object;
.source "AddFileMemberError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;,
        Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;
    }
.end annotation


# static fields
.field public static final INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

.field public static final RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private final userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;
    .param p2, "userErrorValue"    # Lcom/dropbox/core/v2/sharing/SharingUserError;
    .param p3, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    .line 93
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    .line 94
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/AddFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/AddFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    return-object v0
.end method

.method public static userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharingUserError;

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 253
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 277
    :cond_0
    :goto_0
    return v1

    .line 256
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 257
    check-cast v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .line 258
    .local v0, "other":Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-ne v3, v4, :cond_0

    .line 261
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFileMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$AddFileMemberError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 263
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharingUserError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 267
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 269
    goto :goto_0

    :pswitch_4
    move v1, v2

    .line 271
    goto :goto_0

    .line 261
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

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public getUserErrorValue()Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 243
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 248
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidComment()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

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
    .line 238
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRateLimit()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserError()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
