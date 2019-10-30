.class public Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;
.super Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
.source "GroupFullInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupFullInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final created:J

.field protected members:Ljava/util/List;
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
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;J)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "groupManagementType"    # Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .param p4, "created"    # J

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    .line 175
    iput-wide p4, p0, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->created:J

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->members:Ljava/util/List;

    .line 177
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 9

    .prologue
    .line 234
    new-instance v0, Lcom/dropbox/core/v2/team/GroupFullInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-wide v4, p0, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->created:J

    iget-object v6, p0, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->groupExternalId:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->memberCount:Ljava/lang/Long;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->members:Ljava/util/List;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/team/GroupFullInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;JLjava/lang/String;Ljava/lang/Long;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/teamcommon/GroupSummary;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->build()Lcom/dropbox/core/v2/team/GroupFullInfo;

    move-result-object v0

    return-object v0
.end method

.method public withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;
    .locals 0
    .param p1, "groupExternalId"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;

    .line 212
    return-object p0
.end method

.method public bridge synthetic withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;
    .locals 0
    .param p1, "memberCount"    # Ljava/lang/Long;

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;

    .line 224
    return-object p0
.end method

.method public bridge synthetic withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withMembers(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/GroupMemberInfo;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/GroupMemberInfo;>;"
    if-eqz p1, :cond_1

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupMemberInfo;

    .line 193
    .local v0, "x":Lcom/dropbox/core/v2/team/GroupMemberInfo;
    if-nez v0, :cond_0

    .line 194
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    .end local v0    # "x":Lcom/dropbox/core/v2/team/GroupMemberInfo;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupFullInfo$Builder;->members:Ljava/util/List;

    .line 199
    return-object p0
.end method
