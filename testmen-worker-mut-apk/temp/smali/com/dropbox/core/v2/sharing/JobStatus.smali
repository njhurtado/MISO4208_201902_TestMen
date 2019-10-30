.class public final Lcom/dropbox/core/v2/sharing/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;,
        Lcom/dropbox/core/v2/sharing/JobStatus$Tag;
    }
.end annotation


# static fields
.field public static final COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus;

.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

.field private final failedValue:Lcom/dropbox/core/v2/sharing/JobError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;Lcom/dropbox/core/v2/sharing/JobError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;Lcom/dropbox/core/v2/sharing/JobError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobStatus;->COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;Lcom/dropbox/core/v2/sharing/JobError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/JobStatus$Tag;
    .param p2, "failedValue"    # Lcom/dropbox/core/v2/sharing/JobError;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    .line 68
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/JobStatus;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/JobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/JobError;

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;Lcom/dropbox/core/v2/sharing/JobError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/JobStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 172
    check-cast v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    .line 173
    .local v0, "other":Lcom/dropbox/core/v2/sharing/JobStatus;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    if-ne v3, v4, :cond_0

    .line 176
    sget-object v3, Lcom/dropbox/core/v2/sharing/JobStatus$1;->$SwitchMap$com$dropbox$core$v2$sharing$JobStatus$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 178
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 180
    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/JobError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/sharing/JobError;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 158
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 162
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 163
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

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
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

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
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/JobStatus$Tag;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
