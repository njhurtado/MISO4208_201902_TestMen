.class public final Lcom/dropbox/core/v2/team/TeamFolderRenameError;
.super Ljava/lang/Object;
.source "TeamFolderRenameError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;,
        Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;
    }
.end annotation


# static fields
.field public static final FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

.field public static final FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

.field public static final INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

.field public static final OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

.field private final statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .param p3, "statusErrorValue"    # Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 92
    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    .line 93
    iput-object p3, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)V

    return-object v0
.end method

.method public static statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    .prologue
    .line 183
    if-nez p0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;-><init>(Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 262
    if-ne p1, p0, :cond_0

    .line 288
    :goto_0
    :pswitch_0
    return v2

    .line 265
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 266
    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .line 267
    .local v0, "other":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 268
    goto :goto_0

    .line 270
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderRenameError$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderRenameError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 284
    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .line 274
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    :cond_6
    move v2, v1

    .line 288
    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-eq v0, v1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object v0
.end method

.method public getStatusErrorValue()Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-eq v0, v1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.STATUS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 251
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 256
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 257
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderNameAlreadyUsed()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderNameReserved()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidFolderName()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

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
    .line 213
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusError()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
