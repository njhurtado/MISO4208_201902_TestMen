.class public final Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
.super Ljava/lang/Object;
.source "GetFileMetadataError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;,
        Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/GetFileMetadataError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private final userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;-><init>(Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->OTHER:Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;
    .param p2, "userErrorValue"    # Lcom/dropbox/core/v2/sharing/SharingUserError;
    .param p3, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    .line 77
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    .line 78
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;)Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;-><init>(Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    return-object v0
.end method

.method public static userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharingUserError;

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
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;-><init>(Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 218
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 219
    check-cast v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    .line 220
    .local v0, "other":Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    if-ne v3, v4, :cond_0

    .line 223
    sget-object v3, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$1;->$SwitchMap$com$dropbox$core$v2$sharing$GetFileMetadataError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharingUserError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 229
    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    if-eq v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public getUserErrorValue()Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    if-eq v0, v1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 205
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 210
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

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
    .line 200
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

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
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
