.class public final Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
.super Ljava/lang/Object;
.source "TeamFolderArchiveJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;,
        Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

.field private final completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

.field private final failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderMetadata;Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderMetadata;Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;
    .param p2, "completeValue"    # Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .param p3, "failedValue"    # Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    .line 70
    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    .line 71
    iput-object p3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    .prologue
    .line 126
    if-nez p0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderMetadata;Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)V

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderMetadata;Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 216
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 217
    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    .line 218
    .local v0, "other":Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-ne v3, v4, :cond_0

    .line 221
    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderArchiveJobStatus$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 223
    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    return-object v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 202
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 207
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 208
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

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
    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

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
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
