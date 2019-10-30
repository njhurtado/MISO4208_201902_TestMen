.class public Lcom/dropbox/core/v2/team/GroupFullInfo;
.super Lcom/dropbox/core/v2/teamcommon/GroupSummary;
.source "GroupFullInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;,
        Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;
    }
.end annotation


# instance fields
.field protected final created:J

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/GroupMemberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;J)V
    .locals 10
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "groupManagementType"    # Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .param p4, "created"    # J

    .prologue
    const/4 v6, 0x0

    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/team/GroupFullInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;JLjava/lang/String;Ljava/lang/Long;Ljava/util/List;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;JLjava/lang/String;Ljava/lang/Long;Ljava/util/List;)V
    .locals 10
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "groupManagementType"    # Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .param p4, "created"    # J
    .param p6, "groupExternalId"    # Ljava/lang/String;
    .param p7, "memberCount"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/teamcommon/GroupManagementType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/GroupMemberInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p8, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/GroupMemberInfo;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamcommon/GroupSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    if-eqz p8, :cond_1

    .line 54
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dropbox/core/v2/team/GroupMemberInfo;

    .line 55
    .local v7, "x":Lcom/dropbox/core/v2/team/GroupMemberInfo;
    if-nez v7, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .end local v7    # "x":Lcom/dropbox/core/v2/team/GroupMemberInfo;
    :cond_1
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->members:Ljava/util/List;

    .line 61
    iput-wide p4, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->created:J

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/GroupFullInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupFullInfo;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/GroupFullInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupFullInfo;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/team/GroupFullInfo;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupFullInfo;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/core/v2/team/GroupFullInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupFullInfo;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupExternalId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dropbox/core/v2/team/GroupFullInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupFullInfo;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupExternalId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dropbox/core/v2/team/GroupFullInfo;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupFullInfo;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->memberCount:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dropbox/core/v2/team/GroupFullInfo;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupFullInfo;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->memberCount:Ljava/lang/Long;

    return-object v0
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;J)Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;
    .locals 7
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupManagementType"    # Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .param p3, "created"    # J

    .prologue
    .line 162
    new-instance v0, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    if-ne p1, p0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 255
    check-cast v0, Lcom/dropbox/core/v2/team/GroupFullInfo;

    .line 256
    .local v0, "other":Lcom/dropbox/core/v2/team/GroupFullInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupName:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupId:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupId:Ljava/lang/String;

    .line 257
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 258
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    iget-wide v4, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->created:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->created:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupExternalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupExternalId:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupExternalId:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupExternalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupExternalId:Ljava/lang/String;

    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->memberCount:Ljava/lang/Long;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->memberCount:Ljava/lang/Long;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->memberCount:Ljava/lang/Long;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->memberCount:Ljava/lang/Long;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->memberCount:Ljava/lang/Long;

    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->members:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->members:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->members:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->members:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupFullInfo;->members:Ljava/util/List;

    .line 262
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GroupFullInfo;
    :cond_8
    move v1, v2

    .line 266
    goto/16 :goto_0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->created:J

    return-wide v0
.end method

.method public getGroupExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupManagementType()Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->memberCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/GroupMemberInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->members:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 240
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->members:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/team/GroupFullInfo;->created:J

    .line 242
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 240
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 244
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 245
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
