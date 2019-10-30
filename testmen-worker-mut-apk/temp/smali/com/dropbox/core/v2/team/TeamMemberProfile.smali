.class public Lcom/dropbox/core/v2/team/TeamMemberProfile;
.super Lcom/dropbox/core/v2/team/MemberProfile;
.source "TeamMemberProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;,
        Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    }
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;)V
    .locals 12
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
    .line 100
    .local p7, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v11}, Lcom/dropbox/core/v2/team/TeamMemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 13
    .param p1, "teamMemberId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "emailVerified"    # Z
    .param p4, "status"    # Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .param p5, "name"    # Lcom/dropbox/core/v2/users/Name;
    .param p6, "membershipType"    # Lcom/dropbox/core/v2/team/TeamMembershipType;
    .param p8, "externalId"    # Ljava/lang/String;
    .param p9, "accountId"    # Ljava/lang/String;
    .param p10, "joinedOn"    # Ljava/util/Date;
    .param p11, "persistentId"    # Ljava/lang/String;
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p7, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/dropbox/core/v2/team/MemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 65
    if-nez p7, :cond_0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'groups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 69
    .local v12, "x":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'groups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    .end local v12    # "x":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    .line 74
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 8
    .param p0, "teamMemberId"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "emailVerified"    # Z
    .param p3, "status"    # Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .param p4, "name"    # Lcom/dropbox/core/v2/users/Name;
    .param p5, "membershipType"    # Lcom/dropbox/core/v2/team/TeamMembershipType;
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
            ">;)",
            "Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 230
    .local p6, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    if-ne p1, p0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v1

    .line 335
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v0, p1

    .line 336
    check-cast v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;

    .line 337
    .local v0, "other":Lcom/dropbox/core/v2/team/TeamMemberProfile;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->emailVerified:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->emailVerified:Z

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 340
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    .line 341
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    .line 342
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamMembershipType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    .line 343
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_7
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_8
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    .line 346
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_b
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/TeamMemberProfile;
    :cond_c
    move v1, v2

    .line 351
    goto/16 :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->emailVerified:Z

    return v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getJoinedOn()Ljava/util/Date;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getMembershipType()Lcom/dropbox/core/v2/team/TeamMembershipType;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    return-object v0
.end method

.method public getName()Lcom/dropbox/core/v2/users/Name;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    return-object v0
.end method

.method public getPersistentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 322
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 325
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/team/MemberProfile;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 326
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
