.class public final Lcom/dropbox/core/v2/sharing/JobError;
.super Ljava/lang/Object;
.source "JobError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/JobError$Serializer;,
        Lcom/dropbox/core/v2/sharing/JobError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/JobError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

.field private final relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field private final removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field private final unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/sharing/JobError;-><init>(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobError;->OTHER:Lcom/dropbox/core/v2/sharing/JobError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/JobError$Tag;
    .param p2, "unshareFolderErrorValue"    # Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .param p3, "removeFolderMemberErrorValue"    # Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .param p4, "relinquishFolderMembershipErrorValue"    # Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    .line 104
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .line 105
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 106
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/JobError;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/JobError;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/JobError;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    return-object v0
.end method

.method public static relinquishFolderMembershipError(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .prologue
    const/4 v2, 0x0

    .line 260
    if-nez p0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->RELINQUISH_FOLDER_MEMBERSHIP_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)V

    return-object v0
.end method

.method public static removeFolderMemberError(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

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
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->REMOVE_FOLDER_MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/dropbox/core/v2/sharing/JobError;-><init>(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)V

    return-object v0
.end method

.method public static unshareFolderError(Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .prologue
    const/4 v2, 0x0

    .line 153
    if-nez p0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->UNSHARE_FOLDER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/dropbox/core/v2/sharing/JobError;-><init>(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 312
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 334
    :cond_0
    :goto_0
    return v1

    .line 315
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/JobError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 316
    check-cast v0, Lcom/dropbox/core/v2/sharing/JobError;

    .line 317
    .local v0, "other":Lcom/dropbox/core/v2/sharing/JobError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v3, v4, :cond_0

    .line 320
    sget-object v3, Lcom/dropbox/core/v2/sharing/JobError$1;->$SwitchMap$com$dropbox$core$v2$sharing$JobError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 326
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 328
    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRelinquishFolderMembershipErrorValue()Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->RELINQUISH_FOLDER_MEMBERSHIP_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-eq v0, v1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    return-object v0
.end method

.method public getRemoveFolderMemberErrorValue()Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->REMOVE_FOLDER_MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-eq v0, v1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.REMOVE_FOLDER_MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0
.end method

.method public getUnshareFolderErrorValue()Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->UNSHARE_FOLDER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-eq v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UNSHARE_FOLDER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 301
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 307
    .local v0, "hash":I
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRelinquishFolderMembershipError()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->RELINQUISH_FOLDER_MEMBERSHIP_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoveFolderMemberError()Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->REMOVE_FOLDER_MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnshareFolderError()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->UNSHARE_FOLDER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/JobError$Tag;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
