.class public final Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
.super Ljava/lang/Object;
.source "UpdateFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;,
        Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;
    }
.end annotation


# static fields
.field public static final INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field private final memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

.field private final noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .param p3, "memberErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .param p4, "noExplicitAccessValue"    # Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    .line 102
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 103
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 104
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    const/4 v2, 0x0

    .line 150
    if-nez p0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)V

    return-object v0
.end method

.method public static memberError(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .prologue
    const/4 v2, 0x0

    .line 197
    if-nez p0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)V

    return-object v0
.end method

.method public static noExplicitAccess(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .prologue
    const/4 v2, 0x0

    .line 245
    if-nez p0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 316
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 342
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 320
    check-cast v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    .line 321
    .local v0, "other":Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-ne v3, v4, :cond_0

    .line 324
    sget-object v3, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UpdateFolderMemberError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 326
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 330
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 332
    goto :goto_0

    :pswitch_4
    move v1, v2

    .line 334
    goto :goto_0

    :pswitch_5
    move v1, v2

    .line 336
    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public getMemberErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-object v0
.end method

.method public getNoExplicitAccessValue()Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 305
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 311
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsufficientPlan()Z
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberError()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

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
    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

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
    .line 289
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

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
    .line 300
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
