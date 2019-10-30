.class public final Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
.super Ljava/lang/Object;
.source "SaveUrlJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;,
        Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/files/SaveUrlJobStatus;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

.field private final completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

.field private final failedValue:Lcom/dropbox/core/v2/files/SaveUrlError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;-><init>(Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;Lcom/dropbox/core/v2/files/FileMetadata;Lcom/dropbox/core/v2/files/SaveUrlError;)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;Lcom/dropbox/core/v2/files/FileMetadata;Lcom/dropbox/core/v2/files/SaveUrlError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;
    .param p2, "completeValue"    # Lcom/dropbox/core/v2/files/FileMetadata;
    .param p3, "failedValue"    # Lcom/dropbox/core/v2/files/SaveUrlError;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    .line 63
    iput-object p2, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    .line 64
    iput-object p3, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->failedValue:Lcom/dropbox/core/v2/files/SaveUrlError;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/SaveUrlJobStatus;)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/SaveUrlJobStatus;)Lcom/dropbox/core/v2/files/SaveUrlError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->failedValue:Lcom/dropbox/core/v2/files/SaveUrlError;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/FileMetadata;

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;-><init>(Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;Lcom/dropbox/core/v2/files/FileMetadata;Lcom/dropbox/core/v2/files/SaveUrlError;)V

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/files/SaveUrlError;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/SaveUrlError;

    .prologue
    .line 166
    if-nez p0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;-><init>(Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;Lcom/dropbox/core/v2/files/FileMetadata;Lcom/dropbox/core/v2/files/SaveUrlError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 203
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 204
    check-cast v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    .line 205
    .local v0, "other":Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    if-ne v3, v4, :cond_0

    .line 208
    sget-object v3, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$SaveUrlJobStatus$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 210
    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/FileMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->failedValue:Lcom/dropbox/core/v2/files/SaveUrlError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->failedValue:Lcom/dropbox/core/v2/files/SaveUrlError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->failedValue:Lcom/dropbox/core/v2/files/SaveUrlError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->failedValue:Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/SaveUrlError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    return-object v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/files/SaveUrlError;
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->failedValue:Lcom/dropbox/core/v2/files/SaveUrlError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 189
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->failedValue:Lcom/dropbox/core/v2/files/SaveUrlError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 194
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 195
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

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
    .line 149
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

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
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->_tag:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
