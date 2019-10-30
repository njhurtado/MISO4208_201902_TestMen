.class Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;
.super Lcom/dropbox/core/v2/team/GroupMemberSelector;
.source "GroupMembersSetAccessTypeArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;
    }
.end annotation


# instance fields
.field protected final accessType:Lcom/dropbox/core/v2/team/GroupAccessType;

.field protected final returnMembers:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;)V
    .locals 1
    .param p1, "group"    # Lcom/dropbox/core/v2/team/GroupSelector;
    .param p2, "user"    # Lcom/dropbox/core/v2/team/UserSelectorArg;
    .param p3, "accessType"    # Lcom/dropbox/core/v2/team/GroupAccessType;

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;Z)V
    .locals 2
    .param p1, "group"    # Lcom/dropbox/core/v2/team/GroupSelector;
    .param p2, "user"    # Lcom/dropbox/core/v2/team/UserSelectorArg;
    .param p3, "accessType"    # Lcom/dropbox/core/v2/team/GroupAccessType;
    .param p4, "returnMembers"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupMemberSelector;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 42
    if-nez p3, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'accessType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->accessType:Lcom/dropbox/core/v2/team/GroupAccessType;

    .line 46
    iput-boolean p4, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->returnMembers:Z

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    if-ne p1, p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;

    .line 128
    .local v0, "other":Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/GroupSelector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 129
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->accessType:Lcom/dropbox/core/v2/team/GroupAccessType;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->accessType:Lcom/dropbox/core/v2/team/GroupAccessType;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->accessType:Lcom/dropbox/core/v2/team/GroupAccessType;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->accessType:Lcom/dropbox/core/v2/team/GroupAccessType;

    .line 130
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/GroupAccessType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->returnMembers:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->returnMembers:Z

    if-eq v3, v4, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;
    :cond_6
    move v1, v2

    .line 135
    goto :goto_0
.end method

.method public getAccessType()Lcom/dropbox/core/v2/team/GroupAccessType;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->accessType:Lcom/dropbox/core/v2/team/GroupAccessType;

    return-object v0
.end method

.method public getGroup()Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    return-object v0
.end method

.method public getReturnMembers()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->returnMembers:Z

    return v0
.end method

.method public getUser()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 112
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->accessType:Lcom/dropbox/core/v2/team/GroupAccessType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->returnMembers:Z

    .line 114
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 112
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 116
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/team/GroupMemberSelector;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 117
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
