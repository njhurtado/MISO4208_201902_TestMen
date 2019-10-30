.class public final Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
.super Ljava/lang/Object;
.source "RelocationBatchLaunch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;,
        Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/RelocationBatchLaunch;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

.field private final asyncJobIdValue:Ljava/lang/String;

.field private final completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/RelocationBatchResult;)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/RelocationBatchResult;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;
    .param p2, "asyncJobIdValue"    # Ljava/lang/String;
    .param p3, "completeValue"    # Lcom/dropbox/core/v2/files/RelocationBatchResult;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    .line 87
    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;)Lcom/dropbox/core/v2/files/RelocationBatchResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/RelocationBatchResult;)V

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/RelocationBatchResult;

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;-><init>(Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;Ljava/lang/String;Lcom/dropbox/core/v2/files/RelocationBatchResult;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 254
    :cond_0
    :goto_0
    return v1

    .line 237
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 238
    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    .line 239
    .local v0, "other":Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    if-ne v3, v4, :cond_0

    .line 242
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationBatchLaunch$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/RelocationBatchResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 248
    goto :goto_0

    .line 242
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
    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/RelocationBatchResult;
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 223
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 228
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 229
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

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
    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

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
    .line 218
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
