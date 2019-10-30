.class public final Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
.super Ljava/lang/Object;
.source "UploadSessionFinishBatchJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;,
        Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

.field private final completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;-><init>(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;
    .param p2, "completeValue"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    .line 63
    iput-object p2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;-><init>(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 159
    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    .line 160
    .local v0, "other":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    if-ne v3, v4, :cond_0

    .line 163
    sget-object v3, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionFinishBatchJobStatus$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 165
    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 145
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 149
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 150
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

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
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
