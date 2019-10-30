.class public final Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
.super Ljava/lang/Object;
.source "RelocationBatchJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;,
        Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

.field private final completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

.field private final failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/RelocationBatchResult;Lcom/dropbox/core/v2/files/RelocationBatchError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/RelocationBatchResult;Lcom/dropbox/core/v2/files/RelocationBatchError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;
    .param p2, "completeValue"    # Lcom/dropbox/core/v2/files/RelocationBatchResult;
    .param p3, "failedValue"    # Lcom/dropbox/core/v2/files/RelocationBatchError;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    .line 67
    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    .line 68
    iput-object p3, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;)Lcom/dropbox/core/v2/files/RelocationBatchResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/RelocationBatchResult;

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/RelocationBatchResult;Lcom/dropbox/core/v2/files/RelocationBatchError;)V

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/RelocationBatchError;

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/RelocationBatchResult;Lcom/dropbox/core/v2/files/RelocationBatchError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 210
    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    .line 211
    .local v0, "other":Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    if-ne v3, v4, :cond_0

    .line 214
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationBatchJobStatus$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 216
    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/RelocationBatchResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/RelocationBatchError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/RelocationBatchResult;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    return-object v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 195
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 200
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 201
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

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
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

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
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
