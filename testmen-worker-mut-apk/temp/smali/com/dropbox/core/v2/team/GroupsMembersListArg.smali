.class Lcom/dropbox/core/v2/team/GroupsMembersListArg;
.super Ljava/lang/Object;
.source "GroupsMembersListArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;
    }
.end annotation


# instance fields
.field protected final group:Lcom/dropbox/core/v2/team/GroupSelector;

.field protected final limit:J


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;)V
    .locals 2
    .param p1, "group"    # Lcom/dropbox/core/v2/team/GroupSelector;

    .prologue
    .line 60
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/v2/team/GroupsMembersListArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;J)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;J)V
    .locals 2
    .param p1, "group"    # Lcom/dropbox/core/v2/team/GroupSelector;
    .param p2, "limit"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'group\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    .line 39
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    const-wide/16 v0, 0x3e8

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    iput-wide p2, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->limit:J

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    if-ne p1, p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;

    .line 99
    .local v0, "other":Lcom/dropbox/core/v2/team/GroupsMembersListArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/GroupSelector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-wide v4, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->limit:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->limit:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GroupsMembersListArg;
    :cond_4
    move v1, v2

    .line 104
    goto :goto_0
.end method

.method public getGroup()Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    return-object v0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 84
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->limit:J

    .line 86
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 84
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 88
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
