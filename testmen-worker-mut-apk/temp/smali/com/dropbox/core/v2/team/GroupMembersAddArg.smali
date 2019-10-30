.class Lcom/dropbox/core/v2/team/GroupMembersAddArg;
.super Lcom/dropbox/core/v2/team/IncludeMembersArg;
.source "GroupMembersAddArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;
    }
.end annotation


# instance fields
.field protected final group:Lcom/dropbox/core/v2/team/GroupSelector;

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;)V
    .locals 1
    .param p1, "group"    # Lcom/dropbox/core/v2/team/GroupSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAccess;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/team/GroupMembersAddArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)V
    .locals 3
    .param p1, "group"    # Lcom/dropbox/core/v2/team/GroupSelector;
    .param p3, "returnMembers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAccess;>;"
    invoke-direct {p0, p3}, Lcom/dropbox/core/v2/team/IncludeMembersArg;-><init>(Z)V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'group\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    .line 44
    if-nez p2, :cond_1

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MemberAccess;

    .line 48
    .local v0, "x":Lcom/dropbox/core/v2/team/MemberAccess;
    if-nez v0, :cond_2

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    .end local v0    # "x":Lcom/dropbox/core/v2/team/MemberAccess;
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-ne p1, p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 119
    check-cast v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;

    .line 120
    .local v0, "other":Lcom/dropbox/core/v2/team/GroupMembersAddArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/GroupSelector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    .line 121
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->returnMembers:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->returnMembers:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GroupMembersAddArg;
    :cond_5
    move v1, v2

    .line 126
    goto :goto_0
.end method

.method public getGroup()Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    return-object v0
.end method

.method public getReturnMembers()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->returnMembers:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 104
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;->members:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 108
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/team/IncludeMembersArg;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 109
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
