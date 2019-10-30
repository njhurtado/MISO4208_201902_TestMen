.class Lcom/dropbox/core/v2/team/GroupUpdateArgs;
.super Lcom/dropbox/core/v2/team/IncludeMembersArg;
.source "GroupUpdateArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;,
        Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;
    }
.end annotation


# instance fields
.field protected final group:Lcom/dropbox/core/v2/team/GroupSelector;

.field protected final newGroupExternalId:Ljava/lang/String;

.field protected final newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field protected final newGroupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;)V
    .locals 6
    .param p1, "group"    # Lcom/dropbox/core/v2/team/GroupSelector;

    .prologue
    const/4 v3, 0x0

    .line 69
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/GroupUpdateArgs;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;ZLjava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;ZLjava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V
    .locals 2
    .param p1, "group"    # Lcom/dropbox/core/v2/team/GroupSelector;
    .param p2, "returnMembers"    # Z
    .param p3, "newGroupName"    # Ljava/lang/String;
    .param p4, "newGroupExternalId"    # Ljava/lang/String;
    .param p5, "newGroupManagementType"    # Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lcom/dropbox/core/v2/team/IncludeMembersArg;-><init>(Z)V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'group\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    .line 53
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 56
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;
    .locals 1
    .param p0, "group"    # Lcom/dropbox/core/v2/team/GroupSelector;

    .prologue
    .line 133
    new-instance v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    if-ne p1, p0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v1

    .line 252
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 253
    check-cast v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;

    .line 254
    .local v0, "other":Lcom/dropbox/core/v2/team/GroupUpdateArgs;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/GroupSelector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->returnMembers:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->returnMembers:Z

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    .line 257
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 258
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GroupUpdateArgs;
    :cond_6
    move v1, v2

    .line 262
    goto :goto_0
.end method

.method public getGroup()Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    return-object v0
.end method

.method public getNewGroupExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getNewGroupManagementType()Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method public getNewGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnMembers()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->returnMembers:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 236
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 242
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/team/IncludeMembersArg;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 243
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
