.class public final Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
.super Ljava/lang/Object;
.source "DeleteBatchJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;,
        Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

.field public static final OTHER:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

.field private final completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

.field private final failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;-><init>(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResult;Lcom/dropbox/core/v2/files/DeleteBatchError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;-><init>(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResult;Lcom/dropbox/core/v2/files/DeleteBatchError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResult;Lcom/dropbox/core/v2/files/DeleteBatchError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;
    .param p2, "completeValue"    # Lcom/dropbox/core/v2/files/DeleteBatchResult;
    .param p3, "failedValue"    # Lcom/dropbox/core/v2/files/DeleteBatchError;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    .line 88
    iput-object p2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    .line 89
    iput-object p3, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;)Lcom/dropbox/core/v2/files/DeleteBatchResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;)Lcom/dropbox/core/v2/files/DeleteBatchError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/DeleteBatchResult;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/DeleteBatchResult;

    .prologue
    .line 146
    if-nez p0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;-><init>(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResult;Lcom/dropbox/core/v2/files/DeleteBatchError;)V

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/files/DeleteBatchError;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/DeleteBatchError;

    .prologue
    .line 194
    if-nez p0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;-><init>(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResult;Lcom/dropbox/core/v2/files/DeleteBatchError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 241
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 245
    check-cast v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    .line 246
    .local v0, "other":Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    if-ne v3, v4, :cond_0

    .line 249
    sget-object v3, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteBatchJobStatus$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 251
    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/DeleteBatchResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/DeleteBatchError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 257
    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/DeleteBatchResult;
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    return-object v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/files/DeleteBatchError;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 230
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 235
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 236
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInProgress()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

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
    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
