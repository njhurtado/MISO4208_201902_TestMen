.class public final Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
.super Ljava/lang/Object;
.source "RemoveFileMemberError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;,
        Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private final noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

.field private final userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;
    .param p2, "userErrorValue"    # Lcom/dropbox/core/v2/sharing/SharingUserError;
    .param p3, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .param p4, "noExplicitAccessValue"    # Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 88
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    .line 89
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 90
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .prologue
    const/4 v2, 0x0

    .line 182
    if-nez p0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    return-object v0
.end method

.method public static noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .prologue
    const/4 v2, 0x0

    .line 231
    if-nez p0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    return-object v0
.end method

.method public static userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharingUserError;

    .prologue
    const/4 v2, 0x0

    .line 136
    if-nez p0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 281
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 303
    :cond_0
    :goto_0
    return v1

    .line 284
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 285
    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    .line 286
    .local v0, "other":Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-ne v3, v4, :cond_0

    .line 289
    sget-object v3, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RemoveFileMemberError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 291
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharingUserError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 297
    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public getNoExplicitAccessValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public getUserErrorValue()Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 270
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 276
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

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
    .line 212
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

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
    .line 265
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

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
    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
