.class public Lcom/dropbox/core/v2/team/MembersListResult;
.super Ljava/lang/Object;
.source "MembersListResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersListResult$Serializer;
    }
.end annotation


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final hasMore:Z

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/TeamMemberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 3
    .param p2, "cursor"    # Ljava/lang/String;
    .param p3, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/TeamMemberInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/TeamMemberInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamMemberInfo;

    .line 45
    .local v0, "x":Lcom/dropbox/core/v2/team/TeamMemberInfo;
    if-nez v0, :cond_1

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    .end local v0    # "x":Lcom/dropbox/core/v2/team/TeamMemberInfo;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    .line 50
    if-nez p2, :cond_3

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'cursor\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    .line 54
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/MembersListResult;->hasMore:Z

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p1, p0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 105
    check-cast v0, Lcom/dropbox/core/v2/team/MembersListResult;

    .line 106
    .local v0, "other":Lcom/dropbox/core/v2/team/MembersListResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MembersListResult;->hasMore:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/MembersListResult;->hasMore:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/MembersListResult;
    :cond_5
    move v1, v2

    .line 112
    goto :goto_0
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersListResult;->hasMore:Z

    return v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/TeamMemberInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 90
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersListResult;->members:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersListResult;->cursor:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MembersListResult;->hasMore:Z

    .line 93
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 90
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 95
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/dropbox/core/v2/team/MembersListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersListResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/dropbox/core/v2/team/MembersListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersListResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
