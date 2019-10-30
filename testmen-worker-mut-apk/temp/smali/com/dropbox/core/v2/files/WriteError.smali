.class public final Lcom/dropbox/core/v2/files/WriteError;
.super Ljava/lang/Object;
.source "WriteError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/WriteError$Serializer;,
        Lcom/dropbox/core/v2/files/WriteError$Tag;
    }
.end annotation


# static fields
.field public static final DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError;

.field public static final INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError;

.field public static final NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/WriteError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

.field private final conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

.field private final malformedPathValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/WriteError;-><init>(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteConflictError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/WriteError;-><init>(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteConflictError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError;

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/WriteError;-><init>(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteConflictError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/WriteError;-><init>(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteConflictError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->OTHER:Lcom/dropbox/core/v2/files/WriteError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteConflictError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/WriteError$Tag;
    .param p2, "malformedPathValue"    # Ljava/lang/String;
    .param p3, "conflictValue"    # Lcom/dropbox/core/v2/files/WriteConflictError;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 101
    iput-object p2, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/WriteError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/WriteConflictError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    return-object v0
.end method

.method public static conflict(Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/WriteConflictError;

    .prologue
    .line 204
    if-nez p0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/files/WriteError;-><init>(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteConflictError;)V

    return-object v0
.end method

.method public static malformedPath()Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dropbox/core/v2/files/WriteError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    return-object v0
.end method

.method public static malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/files/WriteError;-><init>(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteConflictError;)V

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

    .line 309
    :goto_0
    :pswitch_0
    return v2

    .line 286
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/files/WriteError;

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 287
    check-cast v0, Lcom/dropbox/core/v2/files/WriteError;

    .line 288
    .local v0, "other":Lcom/dropbox/core/v2/files/WriteError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 289
    goto :goto_0

    .line 291
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/files/WriteError$1;->$SwitchMap$com$dropbox$core$v2$files$WriteError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/WriteError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 305
    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/WriteConflictError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/WriteError;
    :cond_6
    move v2, v1

    .line 309
    goto :goto_0

    .line 291
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

.method public getConflictValue()Lcom/dropbox/core/v2/files/WriteConflictError;
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-eq v0, v1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.CONFLICT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/WriteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    return-object v0
.end method

.method public getMalformedPathValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-eq v0, v1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MALFORMED_PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/WriteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 273
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 278
    .local v0, "hash":I
    return v0
.end method

.method public isConflict()Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisallowedName()Z
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsufficientSpace()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMalformedPath()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoWritePermission()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError$Tag;

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
    .line 268
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/WriteError$Tag;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
