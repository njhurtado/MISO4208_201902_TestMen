.class public final Lcom/dropbox/core/v2/files/SaveUrlResult;
.super Ljava/lang/Object;
.source "SaveUrlResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;,
        Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;
    }
.end annotation


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

.field private final asyncJobIdValue:Ljava/lang/String;

.field private final completeValue:Lcom/dropbox/core/v2/files/FileMetadata;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/FileMetadata;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;
    .param p2, "asyncJobIdValue"    # Ljava/lang/String;
    .param p3, "completeValue"    # Lcom/dropbox/core/v2/files/FileMetadata;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    .line 62
    iput-object p2, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/SaveUrlResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/SaveUrlResult;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/SaveUrlResult;)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/SaveUrlResult;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlResult;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/files/SaveUrlResult;-><init>(Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/FileMetadata;)V

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/FileMetadata;

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlResult;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/files/SaveUrlResult;-><init>(Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/FileMetadata;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 197
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 200
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/files/SaveUrlResult;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 201
    check-cast v0, Lcom/dropbox/core/v2/files/SaveUrlResult;

    .line 202
    .local v0, "other":Lcom/dropbox/core/v2/files/SaveUrlResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    if-ne v3, v4, :cond_0

    .line 205
    sget-object v3, Lcom/dropbox/core/v2/files/SaveUrlResult$1;->$SwitchMap$com$dropbox$core$v2$files$SaveUrlResult$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 207
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/FileMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    if-eq v0, v1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    if-eq v0, v1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 186
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 191
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 192
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

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
    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
