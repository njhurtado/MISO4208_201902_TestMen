.class public final Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
.super Ljava/lang/Object;
.source "RemoveFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;,
        Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;
    }
.end annotation


# static fields
.field public static final FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field private final memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .param p3, "memberErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 106
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 107
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)V

    return-object v0
.end method

.method public static memberError(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .prologue
    .line 200
    if-nez p0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 289
    if-ne p1, p0, :cond_0

    .line 317
    :goto_0
    :pswitch_0
    return v2

    .line 292
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 293
    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 294
    .local v0, "other":Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 295
    goto :goto_0

    .line 297
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RemoveFolderMemberError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 313
    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    :cond_6
    move v2, v1

    .line 317
    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public getMemberErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 279
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 284
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderOwner()Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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
    .line 241
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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
    .line 183
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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
    .line 263
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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
    .line 274
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamFolder()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
