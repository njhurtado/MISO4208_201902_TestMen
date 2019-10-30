.class public final Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
.super Ljava/lang/Object;
.source "DeleteBatchLaunch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;,
        Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/DeleteBatchLaunch;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

.field private final asyncJobIdValue:Ljava/lang/String;

.field private final completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;-><init>(Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/DeleteBatchResult;)V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/DeleteBatchResult;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;
    .param p2, "asyncJobIdValue"    # Ljava/lang/String;
    .param p3, "completeValue"    # Lcom/dropbox/core/v2/files/DeleteBatchResult;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    .line 86
    iput-object p2, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;)Lcom/dropbox/core/v2/files/DeleteBatchResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

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
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;-><init>(Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/DeleteBatchResult;)V

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/DeleteBatchResult;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/DeleteBatchResult;

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;-><init>(Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/DeleteBatchResult;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 237
    check-cast v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    .line 238
    .local v0, "other":Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    if-ne v3, v4, :cond_0

    .line 241
    sget-object v3, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteBatchLaunch$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 243
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/DeleteBatchResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 247
    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/DeleteBatchResult;
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 222
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 227
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 228
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

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
    .line 217
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
