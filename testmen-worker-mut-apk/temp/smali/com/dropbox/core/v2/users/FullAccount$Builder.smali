.class public Lcom/dropbox/core/v2/users/FullAccount$Builder;
.super Ljava/lang/Object;
.source "FullAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/users/FullAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final accountId:Ljava/lang/String;

.field protected final accountType:Lcom/dropbox/core/v2/users/AccountType;

.field protected country:Ljava/lang/String;

.field protected final disabled:Z

.field protected final email:Ljava/lang/String;

.field protected final emailVerified:Z

.field protected final isPaired:Z

.field protected final locale:Ljava/lang/String;

.field protected final name:Lcom/dropbox/core/v2/users/Name;

.field protected profilePhotoUrl:Ljava/lang/String;

.field protected final referralLink:Ljava/lang/String;

.field protected team:Lcom/dropbox/core/v2/users/FullTeam;

.field protected teamMemberId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/users/AccountType;)V
    .locals 3
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
    const/16 v1, 0x28

    const/4 v2, 0x0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    if-nez p1, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'accountId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'accountId\' is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'accountId\' is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->accountId:Ljava/lang/String;

    .line 331
    if-nez p2, :cond_3

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    .line 335
    if-nez p3, :cond_4

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'email\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_4
    iput-object p3, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->email:Ljava/lang/String;

    .line 339
    iput-boolean p4, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->emailVerified:Z

    .line 340
    iput-boolean p5, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->disabled:Z

    .line 341
    if-nez p6, :cond_5

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'locale\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_5
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'locale\' is shorter than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_6
    iput-object p6, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->locale:Ljava/lang/String;

    .line 348
    if-nez p7, :cond_7

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'referralLink\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_7
    iput-object p7, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->referralLink:Ljava/lang/String;

    .line 352
    iput-boolean p8, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->isPaired:Z

    .line 353
    if-nez p9, :cond_8

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'accountType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_8
    iput-object p9, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->accountType:Lcom/dropbox/core/v2/users/AccountType;

    .line 357
    iput-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->profilePhotoUrl:Ljava/lang/String;

    .line 358
    iput-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->country:Ljava/lang/String;

    .line 359
    iput-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->team:Lcom/dropbox/core/v2/users/FullTeam;

    .line 360
    iput-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->teamMemberId:Ljava/lang/String;

    .line 361
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/users/FullAccount;
    .locals 14

    .prologue
    .line 435
    new-instance v0, Lcom/dropbox/core/v2/users/FullAccount;

    iget-object v1, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->email:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->emailVerified:Z

    iget-boolean v5, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->disabled:Z

    iget-object v6, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->locale:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->referralLink:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->isPaired:Z

    iget-object v9, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->accountType:Lcom/dropbox/core/v2/users/AccountType;

    iget-object v10, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->profilePhotoUrl:Ljava/lang/String;

    iget-object v11, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->country:Ljava/lang/String;

    iget-object v12, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->team:Lcom/dropbox/core/v2/users/FullTeam;

    iget-object v13, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->teamMemberId:Ljava/lang/String;

    invoke-direct/range {v0 .. v13}, Lcom/dropbox/core/v2/users/FullAccount;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/users/AccountType;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/users/FullTeam;Ljava/lang/String;)V

    return-object v0
.end method

.method public withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/users/FullAccount$Builder;
    .locals 2
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 390
    if-eqz p1, :cond_1

    .line 391
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'country\' is shorter than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'country\' is longer than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->country:Ljava/lang/String;

    .line 399
    return-object p0
.end method

.method public withProfilePhotoUrl(Ljava/lang/String;)Lcom/dropbox/core/v2/users/FullAccount$Builder;
    .locals 0
    .param p1, "profilePhotoUrl"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->profilePhotoUrl:Ljava/lang/String;

    .line 373
    return-object p0
.end method

.method public withTeam(Lcom/dropbox/core/v2/users/FullTeam;)Lcom/dropbox/core/v2/users/FullAccount$Builder;
    .locals 0
    .param p1, "team"    # Lcom/dropbox/core/v2/users/FullTeam;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->team:Lcom/dropbox/core/v2/users/FullTeam;

    .line 412
    return-object p0
.end method

.method public withTeamMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/users/FullAccount$Builder;
    .locals 0
    .param p1, "teamMemberId"    # Ljava/lang/String;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/dropbox/core/v2/users/FullAccount$Builder;->teamMemberId:Ljava/lang/String;

    .line 425
    return-object p0
.end method
