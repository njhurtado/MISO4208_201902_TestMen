.class public final Lcom/dropbox/core/v2/team/MembersAddLaunch;
.super Ljava/lang/Object;
.source "MembersAddLaunch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;,
        Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;
    }
.end annotation


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

.field private final asyncJobIdValue:Ljava/lang/String;

.field private final completeValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;
    .param p2, "asyncJobIdValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "completeValue":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    .line 60
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/MembersAddLaunch;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MembersAddLaunch;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/MembersAddLaunch;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MembersAddLaunch;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/team/MembersAddLaunch;-><init>(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static complete(Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    if-nez p0, :cond_0

    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    .line 164
    .local v0, "x":Lcom/dropbox/core/v2/team/MemberAddResult;
    if-nez v0, :cond_1

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    .end local v0    # "x":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    sget-object v2, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;-><init>(Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 199
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 203
    check-cast v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    .line 204
    .local v0, "other":Lcom/dropbox/core/v2/team/MembersAddLaunch;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-ne v3, v4, :cond_0

    .line 207
    sget-object v3, Lcom/dropbox/core/v2/team/MembersAddLaunch$1;->$SwitchMap$com$dropbox$core$v2$team$MembersAddLaunch$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 207
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
    .line 128
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 188
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->completeValue:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 193
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 194
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

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
    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddLaunch;->_tag:Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
