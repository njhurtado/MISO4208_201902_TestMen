.class public final Lcom/dropbox/core/v2/sharing/MountFolderError;
.super Ljava/lang/Object;
.source "MountFolderError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;,
        Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;
    }
.end annotation


# static fields
.field public static final ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field private final insufficientQuotaValue:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .param p3, "insufficientQuotaValue"    # Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    .line 115
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 116
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->insufficientQuotaValue:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/MountFolderError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/MountFolderError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->insufficientQuotaValue:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)V

    return-object v0
.end method

.method public static insufficientQuota(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/MountFolderError;-><init>(Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 301
    if-ne p1, p0, :cond_0

    .line 329
    :goto_0
    :pswitch_0
    return v2

    .line 304
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/MountFolderError;

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 305
    check-cast v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    .line 306
    .local v0, "other":Lcom/dropbox/core/v2/sharing/MountFolderError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 307
    goto :goto_0

    .line 309
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/sharing/MountFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$MountFolderError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 325
    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .line 315
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->insufficientQuotaValue:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->insufficientQuotaValue:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->insufficientQuotaValue:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->insufficientQuotaValue:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/MountFolderError;
    :cond_6
    move v2, v1

    .line 329
    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-eq v0, v1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public getInsufficientQuotaValue()Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-eq v0, v1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INSUFFICIENT_QUOTA, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->insufficientQuotaValue:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 291
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->insufficientQuotaValue:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 296
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlreadyMounted()Z
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsideSharedFolder()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsufficientQuota()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

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
    .line 264
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotMountable()Z
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

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
    .line 286
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
