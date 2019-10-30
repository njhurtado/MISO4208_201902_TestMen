.class public final Lcom/dropbox/core/v2/async/LaunchEmptyResult;
.super Ljava/lang/Object;
.source "LaunchEmptyResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;,
        Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;
    }
.end annotation


# static fields
.field public static final COMPLETE:Lcom/dropbox/core/v2/async/LaunchEmptyResult;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

.field private final asyncJobIdValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/async/LaunchEmptyResult;-><init>(Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->COMPLETE:Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;
    .param p2, "asyncJobIdValue"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    .line 71
    iput-object p2, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/async/LaunchEmptyResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/async/LaunchEmptyResult;-><init>(Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 167
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 171
    check-cast v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    .line 172
    .local v0, "other":Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    if-ne v3, v4, :cond_0

    .line 175
    sget-object v3, Lcom/dropbox/core/v2/async/LaunchEmptyResult$1;->$SwitchMap$com$dropbox$core$v2$async$LaunchEmptyResult$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 179
    goto :goto_0

    .line 175
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
    .line 138
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    if-eq v0, v1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 157
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 161
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 162
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

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
    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
