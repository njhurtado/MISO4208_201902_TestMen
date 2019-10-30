.class Lcom/dropbox/core/v2/team/MembersListArg;
.super Ljava/lang/Object;
.source "MembersListArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersListArg$Serializer;,
        Lcom/dropbox/core/v2/team/MembersListArg$Builder;
    }
.end annotation


# instance fields
.field protected final includeRemoved:Z

.field protected final limit:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersListArg;-><init>(JZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 3
    .param p1, "limit"    # J
    .param p3, "includeRemoved"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iput-wide p1, p0, Lcom/dropbox/core/v2/team/MembersListArg;->limit:J

    .line 43
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/MembersListArg;->includeRemoved:Z

    .line 44
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/team/MembersListArg$Builder;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersListArg$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    if-ne p1, p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 176
    check-cast v0, Lcom/dropbox/core/v2/team/MembersListArg;

    .line 177
    .local v0, "other":Lcom/dropbox/core/v2/team/MembersListArg;
    iget-wide v4, p0, Lcom/dropbox/core/v2/team/MembersListArg;->limit:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/team/MembersListArg;->limit:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MembersListArg;->includeRemoved:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/MembersListArg;->includeRemoved:Z

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/MembersListArg;
    :cond_3
    move v1, v2

    .line 182
    goto :goto_0
.end method

.method public getIncludeRemoved()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersListArg;->includeRemoved:Z

    return v0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/dropbox/core/v2/team/MembersListArg;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 162
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/team/MembersListArg;->limit:J

    .line 163
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MembersListArg;->includeRemoved:Z

    .line 164
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 162
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 166
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
