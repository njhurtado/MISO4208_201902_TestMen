.class public Lcom/dropbox/core/v2/team/ListMembersAppsResult;
.super Ljava/lang/Object;
.source "ListMembersAppsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/ListMembersAppsResult$Serializer;
    }
.end annotation


# instance fields
.field protected final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberLinkedApps;",
            ">;"
        }
    .end annotation
.end field

.field protected final cursor:Ljava/lang/String;

.field protected final hasMore:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberLinkedApps;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberLinkedApps;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/team/ListMembersAppsResult;-><init>(Ljava/util/List;ZLjava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLjava/lang/String;)V
    .locals 3
    .param p2, "hasMore"    # Z
    .param p3, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberLinkedApps;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberLinkedApps;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'apps\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MemberLinkedApps;

    .line 52
    .local v0, "x":Lcom/dropbox/core/v2/team/MemberLinkedApps;
    if-nez v0, :cond_1

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'apps\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0    # "x":Lcom/dropbox/core/v2/team/MemberLinkedApps;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->apps:Ljava/util/List;

    .line 57
    iput-boolean p2, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->hasMore:Z

    .line 58
    iput-object p3, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->cursor:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    if-ne p1, p0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;

    .line 130
    .local v0, "other":Lcom/dropbox/core/v2/team/ListMembersAppsResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->apps:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->apps:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->apps:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->apps:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->hasMore:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->hasMore:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->cursor:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->cursor:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->cursor:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/ListMembersAppsResult;
    :cond_4
    move v1, v2

    .line 136
    goto :goto_0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberLinkedApps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->hasMore:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 114
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->apps:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->hasMore:Z

    .line 116
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;->cursor:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 119
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/dropbox/core/v2/team/ListMembersAppsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMembersAppsResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMembersAppsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/dropbox/core/v2/team/ListMembersAppsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMembersAppsResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMembersAppsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
