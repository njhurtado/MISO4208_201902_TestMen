.class public final Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
.super Ljava/lang/Object;
.source "RelinquishFolderMembershipError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;,
        Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;
    }
.end annotation


# static fields
.field public static final FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final MOUNTED:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->MOUNTED:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->MOUNTED:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 104
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    .line 127
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    .line 173
    if-nez p0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 283
    if-ne p1, p0, :cond_0

    .line 313
    :goto_0
    :pswitch_0
    return v2

    .line 286
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 287
    check-cast v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 288
    .local v0, "other":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 289
    goto :goto_0

    .line 291
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RelinquishFolderMembershipError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 309
    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    :cond_4
    move v2, v1

    .line 313
    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
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
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    if-eq v0, v1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 274
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 278
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

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
    .line 203
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

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
    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMounted()Z
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->MOUNTED:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

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
    .line 258
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

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
    .line 247
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

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
    .line 269
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

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
    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
