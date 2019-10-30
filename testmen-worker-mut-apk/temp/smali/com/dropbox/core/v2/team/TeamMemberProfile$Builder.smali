.class public Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
.super Lcom/dropbox/core/v2/team/MemberProfile$Builder;
.source "TeamMemberProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamMemberProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;)V
    .locals 3
    .param p1, "teamMemberId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "emailVerified"    # Z
    .param p4, "status"    # Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .param p5, "name"    # Lcom/dropbox/core/v2/users/Name;
    .param p6, "membershipType"    # Lcom/dropbox/core/v2/team/TeamMembershipType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dropbox/core/v2/team/TeamMemberStatus;",
            "Lcom/dropbox/core/v2/users/Name;",
            "Lcom/dropbox/core/v2/team/TeamMembershipType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p7, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;)V

    .line 241
    if-nez p7, :cond_0

    .line 242
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'groups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_0
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'groups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    .end local v0    # "x":Ljava/lang/String;
    :cond_2
    iput-object p7, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->groups:Ljava/util/List;

    .line 250
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/team/MemberProfile;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->build()Lcom/dropbox/core/v2/team/TeamMemberProfile;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/dropbox/core/v2/team/TeamMemberProfile;
    .locals 12

    .prologue
    .line 316
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->teamMemberId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->email:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->emailVerified:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->groups:Ljava/util/List;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->externalId:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->accountId:Ljava/lang/String;

    iget-object v10, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->joinedOn:Ljava/util/Date;

    iget-object v11, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->persistentId:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lcom/dropbox/core/v2/team/TeamMemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    .line 279
    return-object p0
.end method

.method public bridge synthetic withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0
    .param p1, "externalId"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    .line 263
    return-object p0
.end method

.method public bridge synthetic withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0
    .param p1, "joinedOn"    # Ljava/util/Date;

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    .line 292
    return-object p0
.end method

.method public bridge synthetic withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0
    .param p1, "persistentId"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    .line 306
    return-object p0
.end method
