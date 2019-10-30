.class public final Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
.super Ljava/lang/Object;
.source "AddMemberSelectorError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;,
        Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;
    }
.end annotation


# static fields
.field public static final AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

.field private final invalidDropboxIdValue:Ljava/lang/String;

.field private final invalidEmailValue:Ljava/lang/String;

.field private final unverifiedDropboxIdValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;
    .param p2, "invalidDropboxIdValue"    # Ljava/lang/String;
    .param p3, "invalidEmailValue"    # Ljava/lang/String;
    .param p4, "unverifiedDropboxIdValue"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 120
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public static invalidDropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 180
    if-nez p0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static invalidEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 235
    if-nez p0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static unverifiedDropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 293
    if-nez p0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 369
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 397
    :cond_0
    :goto_0
    return v1

    .line 372
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 373
    check-cast v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 374
    .local v0, "other":Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v3, v4, :cond_0

    .line 377
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$1;->$SwitchMap$com$dropbox$core$v2$sharing$AddMemberSelectorError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 379
    goto :goto_0

    .line 381
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 385
    :pswitch_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :pswitch_4
    move v1, v2

    .line 387
    goto :goto_0

    :pswitch_5
    move v1, v2

    .line 389
    goto :goto_0

    :pswitch_6
    move v1, v2

    .line 391
    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getInvalidDropboxIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-eq v0, v1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID_DROPBOX_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidEmailValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-eq v0, v1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID_EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUnverifiedDropboxIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-eq v0, v1, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UNVERIFIED_DROPBOX_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 358
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidDropboxIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->invalidEmailValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->unverifiedDropboxIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 364
    .local v0, "hash":I
    return v0
.end method

.method public isAutomaticGroup()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupDeleted()Z
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupNotOnTeam()Z
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidDropboxId()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidEmail()Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

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
    .line 353
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnverifiedDropboxId()Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->_tag:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
