.class public final Lcom/dropbox/core/v2/sharing/UnshareFolderError;
.super Ljava/lang/Object;
.source "UnshareFolderError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;,
        Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;
    }
.end annotation


# static fields
.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/UnshareFolderError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    .line 93
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;-><init>(Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 216
    if-ne p1, p0, :cond_0

    .line 240
    :goto_0
    :pswitch_0
    return v2

    .line 219
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 220
    check-cast v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .line 221
    .local v0, "other":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 222
    goto :goto_0

    .line 224
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/sharing/UnshareFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UnshareFolderError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 236
    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    :cond_4
    move v2, v1

    .line 240
    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 207
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 211
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

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
    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

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
    .line 202
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

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
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyFiles()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
