.class public final Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;
.super Ljava/lang/Object;
.source "UploadSessionFinishBatchResultEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;,
        Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;
    }
.end annotation


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

.field private final failureValue:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

.field private final successValue:Lcom/dropbox/core/v2/files/FileMetadata;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/FileMetadata;Lcom/dropbox/core/v2/files/UploadSessionFinishError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;
    .param p2, "successValue"    # Lcom/dropbox/core/v2/files/FileMetadata;
    .param p3, "failureValue"    # Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    .line 50
    iput-object p2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/FileMetadata;

    .line 51
    iput-object p3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/FileMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    return-object v0
.end method

.method public static failure(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;-><init>(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/FileMetadata;Lcom/dropbox/core/v2/files/UploadSessionFinishError;)V

    return-object v0
.end method

.method public static success(Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/FileMetadata;

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;-><init>(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/FileMetadata;Lcom/dropbox/core/v2/files/UploadSessionFinishError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 173
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 176
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 177
    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    .line 178
    .local v0, "other":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    if-ne v3, v4, :cond_0

    .line 181
    sget-object v3, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionFinishBatchResultEntry$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 183
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/FileMetadata;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/FileMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFailureValue()Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILURE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    return-object v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    if-eq v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/FileMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 163
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/FileMetadata;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 168
    .local v0, "hash":I
    return v0
.end method

.method public isFailure()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
