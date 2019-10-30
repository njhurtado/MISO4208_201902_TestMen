.class public Lcom/dropbox/core/v2/team/MemberProfile;
.super Ljava/lang/Object;
.source "MemberProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MemberProfile$Serializer;,
        Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    }
.end annotation


# instance fields
.field protected final accountId:Ljava/lang/String;

.field protected final email:Ljava/lang/String;

.field protected final emailVerified:Z

.field protected final externalId:Ljava/lang/String;

.field protected final joinedOn:Ljava/util/Date;

.field protected final membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

.field protected final name:Lcom/dropbox/core/v2/users/Name;

.field protected final persistentId:Ljava/lang/String;

.field protected final status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;)V
    .locals 11
    .param p1, "teamMemberId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "emailVerified"    # Z
    .param p4, "status"    # Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .param p5, "name"    # Lcom/dropbox/core/v2/users/Name;
    .param p6, "membershipType"    # Lcom/dropbox/core/v2/team/TeamMembershipType;

    .prologue
    .line 127
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/team/MemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "teamMemberId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "emailVerified"    # Z
    .param p4, "status"    # Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .param p5, "name"    # Lcom/dropbox/core/v2/users/Name;
    .param p6, "membershipType"    # Lcom/dropbox/core/v2/team/TeamMembershipType;
    .param p7, "externalId"    # Ljava/lang/String;
    .param p8, "accountId"    # Ljava/lang/String;
    .param p9, "joinedOn"    # Ljava/util/Date;
    .param p10, "persistentId"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x28

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'teamMemberId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    .line 74
    iput-object p7, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    .line 75
    if-eqz p8, :cond_2

    .line 76
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'accountId\' is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'accountId\' is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    iput-object p8, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    .line 84
    if-nez p2, :cond_3

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'email\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    .line 88
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->emailVerified:Z

    .line 89
    if-nez p4, :cond_4

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'status\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_4
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 93
    if-nez p5, :cond_5

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_5
    iput-object p5, p0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    .line 97
    if-nez p6, :cond_6

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'membershipType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_6
    iput-object p6, p0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    .line 101
    invoke-static {p9}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    .line 102
    iput-object p10, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 7
    .param p0, "teamMemberId"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "emailVerified"    # Z
    .param p3, "status"    # Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .param p4, "name"    # Lcom/dropbox/core/v2/users/Name;
    .param p5, "membershipType"    # Lcom/dropbox/core/v2/team/TeamMembershipType;

    .prologue
    .line 246
    new-instance v0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    if-ne p1, p0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v1

    .line 392
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v0, p1

    .line 393
    check-cast v0, Lcom/dropbox/core/v2/team/MemberProfile;

    .line 394
    .local v0, "other":Lcom/dropbox/core/v2/team/MemberProfile;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    .line 395
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->emailVerified:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->emailVerified:Z

    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 397
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    .line 398
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    .line 399
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamMembershipType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    .line 400
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_7
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    .line 401
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_8
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    .line 402
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    .line 403
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_a
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/MemberProfile;
    :cond_b
    move v1, v2

    .line 407
    goto/16 :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->emailVerified:Z

    return v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinedOn()Ljava/util/Date;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getMembershipType()Lcom/dropbox/core/v2/team/TeamMembershipType;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    return-object v0
.end method

.method public getName()Lcom/dropbox/core/v2/users/Name;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    return-object v0
.end method

.method public getPersistentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 371
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->teamMemberId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->externalId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->accountId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->email:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->emailVerified:Z

    .line 376
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->joinedOn:Ljava/util/Date;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberProfile;->persistentId:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 371
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 383
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 413
    sget-object v0, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberProfile$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    sget-object v0, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberProfile$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberProfile$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
