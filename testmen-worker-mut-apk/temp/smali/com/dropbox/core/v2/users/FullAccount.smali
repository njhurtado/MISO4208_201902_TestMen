.class public Lcom/dropbox/core/v2/users/FullAccount;
.super Lcom/dropbox/core/v2/users/Account;
.source "FullAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/FullAccount$Serializer;,
        Lcom/dropbox/core/v2/users/FullAccount$Builder;
    }
.end annotation


# instance fields
.field protected final accountType:Lcom/dropbox/core/v2/users/AccountType;

.field protected final country:Ljava/lang/String;

.field protected final isPaired:Z

.field protected final locale:Ljava/lang/String;

.field protected final referralLink:Ljava/lang/String;

.field protected final team:Lcom/dropbox/core/v2/users/FullTeam;

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/users/AccountType;)V
    .locals 14
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "name"    # Lcom/dropbox/core/v2/users/Name;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "emailVerified"    # Z
    .param p5, "disabled"    # Z
    .param p6, "locale"    # Ljava/lang/String;
    .param p7, "referralLink"    # Ljava/lang/String;
    .param p8, "isPaired"    # Z
    .param p9, "accountType"    # Lcom/dropbox/core/v2/users/AccountType;

    .prologue
    .line 137
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v13}, Lcom/dropbox/core/v2/users/FullAccount;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/users/AccountType;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/users/FullTeam;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/users/AccountType;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/users/FullTeam;Ljava/lang/String;)V
    .locals 8
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "name"    # Lcom/dropbox/core/v2/users/Name;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "emailVerified"    # Z
    .param p5, "disabled"    # Z
    .param p6, "locale"    # Ljava/lang/String;
    .param p7, "referralLink"    # Ljava/lang/String;
    .param p8, "isPaired"    # Z
    .param p9, "accountType"    # Lcom/dropbox/core/v2/users/AccountType;
    .param p10, "profilePhotoUrl"    # Ljava/lang/String;
    .param p11, "country"    # Ljava/lang/String;
    .param p12, "team"    # Lcom/dropbox/core/v2/users/FullTeam;
    .param p13, "teamMemberId"    # Ljava/lang/String;

    .prologue
    .line 75
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/users/Account;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 76
    if-eqz p11, :cond_1

    .line 77
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'country\' is shorter than 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_0
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'country\' is longer than 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    .line 85
    if-nez p6, :cond_2

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'locale\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_2
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'locale\' is shorter than 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_3
    iput-object p6, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    .line 92
    if-nez p7, :cond_4

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'referralLink\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_4
    iput-object p7, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    .line 97
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    .line 98
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    .line 99
    if-nez p9, :cond_5

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'accountType\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_5
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/users/AccountType;

    .line 103
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/users/AccountType;)Lcom/dropbox/core/v2/users/FullAccount$Builder;
    .locals 10
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "name"    # Lcom/dropbox/core/v2/users/Name;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "emailVerified"    # Z
    .param p4, "disabled"    # Z
    .param p5, "locale"    # Ljava/lang/String;
    .param p6, "referralLink"    # Ljava/lang/String;
    .param p7, "isPaired"    # Z
    .param p8, "accountType"    # Lcom/dropbox/core/v2/users/AccountType;

    .prologue
    .line 298
    new-instance v0, Lcom/dropbox/core/v2/users/FullAccount$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/users/FullAccount$Builder;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/users/AccountType;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    if-ne p1, p0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v1

    .line 460
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v0, p1

    .line 461
    check-cast v0, Lcom/dropbox/core/v2/users/FullAccount;

    .line 462
    .local v0, "other":Lcom/dropbox/core/v2/users/FullAccount;
    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    .line 463
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    .line 464
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_4
    iget-boolean v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->emailVerified:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->emailVerified:Z

    if-ne v3, v4, :cond_b

    iget-boolean v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->disabled:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->disabled:Z

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    .line 467
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    .line 468
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_6
    iget-boolean v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/users/AccountType;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/users/AccountType;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/users/AccountType;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/users/AccountType;

    .line 470
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/AccountType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_7
    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    .line 471
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_8
    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    .line 472
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    .line 473
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/FullTeam;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    .line 474
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_b
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/users/FullAccount;
    :cond_c
    move v1, v2

    .line 478
    goto/16 :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Lcom/dropbox/core/v2/users/AccountType;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/users/AccountType;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->disabled:Z

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->emailVerified:Z

    return v0
.end method

.method public getIsPaired()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/dropbox/core/v2/users/Name;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    return-object v0
.end method

.method public getProfilePhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReferralLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    return-object v0
.end method

.method public getTeam()Lcom/dropbox/core/v2/users/FullTeam;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 441
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    .line 447
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/users/AccountType;

    aput-object v3, v1, v2

    .line 441
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 450
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/users/Account;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 451
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 484
    sget-object v0, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullAccount$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 496
    sget-object v0, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullAccount$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
