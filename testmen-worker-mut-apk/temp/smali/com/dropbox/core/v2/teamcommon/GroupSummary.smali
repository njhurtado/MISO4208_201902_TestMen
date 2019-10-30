.class public Lcom/dropbox/core/v2/teamcommon/GroupSummary;
.super Ljava/lang/Object;
.source "GroupSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;,
        Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
    }
.end annotation


# instance fields
.field protected final groupExternalId:Ljava/lang/String;

.field protected final groupId:Ljava/lang/String;

.field protected final groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field protected final groupName:Ljava/lang/String;

.field protected final memberCount:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "groupManagementType"    # Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .prologue
    const/4 v4, 0x0

    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamcommon/GroupSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "groupManagementType"    # Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .param p4, "groupExternalId"    # Ljava/lang/String;
    .param p5, "memberCount"    # Ljava/lang/Long;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'groupName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupName:Ljava/lang/String;

    .line 52
    if-nez p2, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'groupId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupId:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupExternalId:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->memberCount:Ljava/lang/Long;

    .line 58
    if-nez p3, :cond_2

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'groupManagementType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 62
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupManagementType"    # Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .prologue
    .line 139
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 220
    if-ne p1, p0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 224
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 225
    check-cast v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;

    .line 226
    .local v0, "other":Lcom/dropbox/core/v2/teamcommon/GroupSummary;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupName:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupId:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupId:Ljava/lang/String;

    .line 227
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 228
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupExternalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupExternalId:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupExternalId:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupExternalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupExternalId:Ljava/lang/String;

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->memberCount:Ljava/lang/Long;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->memberCount:Ljava/lang/Long;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->memberCount:Ljava/lang/Long;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->memberCount:Ljava/lang/Long;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->memberCount:Ljava/lang/Long;

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamcommon/GroupSummary;
    :cond_7
    move v1, v2

    .line 234
    goto :goto_0
.end method

.method public getGroupExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupManagementType()Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->memberCount:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 208
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupExternalId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->memberCount:Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 215
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
