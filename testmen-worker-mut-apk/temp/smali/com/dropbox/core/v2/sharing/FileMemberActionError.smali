.class public final Lcom/dropbox/core/v2/sharing/FileMemberActionError;
.super Ljava/lang/Object;
.source "FileMemberActionError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;,
        Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;
    }
.end annotation


# static fields
.field public static final INVALID_MEMBER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private final noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->INVALID_MEMBER:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->INVALID_MEMBER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .param p3, "noExplicitAccessValue"    # Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    .line 100
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 101
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    return-object v0
.end method

.method public static noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .prologue
    .line 220
    if-nez p0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;-><init>(Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 269
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 293
    :cond_0
    :goto_0
    return v1

    .line 272
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 273
    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .line 274
    .local v0, "other":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-ne v3, v4, :cond_0

    .line 277
    sget-object v3, Lcom/dropbox/core/v2/sharing/FileMemberActionError$1;->$SwitchMap$com$dropbox$core$v2$sharing$FileMemberActionError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 279
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 281
    goto :goto_0

    .line 283
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 285
    :pswitch_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_4
    move v1, v2

    .line 287
    goto :goto_0

    .line 277
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
    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public getNoExplicitAccessValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-eq v0, v1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 259
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 264
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidMember()Z
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->INVALID_MEMBER:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoExplicitAccess()Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

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
    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

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
    .line 254
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
