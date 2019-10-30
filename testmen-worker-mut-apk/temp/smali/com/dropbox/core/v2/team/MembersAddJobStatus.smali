.class public final Lcom/dropbox/core/v2/team/MembersAddJobStatus;
.super Ljava/lang/Object;
.source "MembersAddJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;,
        Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/team/MembersAddJobStatus;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

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

.field private final failedValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;-><init>(Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;Ljava/util/List;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;
    .param p3, "failedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "completeValue":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    .line 75
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    .line 76
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/MembersAddJobStatus;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/MembersAddJobStatus;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    return-object v0
.end method

.method public static complete(Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MembersAddJobStatus;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    if-nez p0, :cond_0

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
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

    .line 138
    .local v0, "x":Lcom/dropbox/core/v2/team/MemberAddResult;
    if-nez v0, :cond_1

    .line 139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    .end local v0    # "x":Lcom/dropbox/core/v2/team/MemberAddResult;
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    sget-object v2, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;-><init>(Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public static failed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 191
    if-nez p0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;-><init>(Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 232
    check-cast v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    .line 233
    .local v0, "other":Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    if-ne v3, v4, :cond_0

    .line 236
    sget-object v3, Lcom/dropbox/core/v2/team/MembersAddJobStatus$1;->$SwitchMap$com$dropbox$core$v2$team$MembersAddJobStatus$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 238
    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    return-object v0
.end method

.method public getFailedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 217
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 222
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 223
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

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
    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

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
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
