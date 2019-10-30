.class public Lcom/dropbox/core/v2/team/MemberAddArg;
.super Ljava/lang/Object;
.source "MemberAddArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;,
        Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    }
.end annotation


# instance fields
.field protected final memberEmail:Ljava/lang/String;

.field protected final memberExternalId:Ljava/lang/String;

.field protected final memberGivenName:Ljava/lang/String;

.field protected final memberPersistentId:Ljava/lang/String;

.field protected final memberSurname:Ljava/lang/String;

.field protected final role:Lcom/dropbox/core/v2/team/AdminTier;

.field protected final sendWelcomeEmail:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "memberEmail"    # Ljava/lang/String;
    .param p2, "memberGivenName"    # Ljava/lang/String;
    .param p3, "memberSurname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 128
    const/4 v6, 0x1

    sget-object v7, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/team/MemberAddArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/AdminTier;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/AdminTier;)V
    .locals 4
    .param p1, "memberEmail"    # Ljava/lang/String;
    .param p2, "memberGivenName"    # Ljava/lang/String;
    .param p3, "memberSurname"    # Ljava/lang/String;
    .param p4, "memberExternalId"    # Ljava/lang/String;
    .param p5, "memberPersistentId"    # Ljava/lang/String;
    .param p6, "sendWelcomeEmail"    # Z
    .param p7, "role"    # Lcom/dropbox/core/v2/team/AdminTier;

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'memberEmail\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberEmail\' is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberEmail\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    .line 68
    if-nez p2, :cond_3

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'memberGivenName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberGivenName\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberGivenName\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_5
    const-string v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberGivenName\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_6
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    .line 81
    if-nez p3, :cond_7

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'memberSurname\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_8

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberSurname\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_8
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_9

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberSurname\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_9
    const-string v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberSurname\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_a
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    .line 94
    if-eqz p4, :cond_b

    .line 95
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_b

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberExternalId\' is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_b
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    .line 100
    iput-object p5, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    .line 101
    iput-boolean p6, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->sendWelcomeEmail:Z

    .line 102
    if-nez p7, :cond_c

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'role\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_c
    iput-object p7, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    .line 106
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 1
    .param p0, "memberEmail"    # Ljava/lang/String;
    .param p1, "memberGivenName"    # Ljava/lang/String;
    .param p2, "memberSurname"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    if-ne p1, p0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v1

    .line 391
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 392
    check-cast v0, Lcom/dropbox/core/v2/team/MemberAddArg;

    .line 393
    .local v0, "other":Lcom/dropbox/core/v2/team/MemberAddArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    .line 394
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    .line 395
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->sendWelcomeEmail:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->sendWelcomeEmail:Z

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    .line 399
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/AdminTier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/MemberAddArg;
    :cond_8
    move v1, v2

    .line 403
    goto/16 :goto_0
.end method

.method public getMemberEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberPersistentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberSurname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Lcom/dropbox/core/v2/team/AdminTier;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    return-object v0
.end method

.method public getSendWelcomeEmail()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->sendWelcomeEmail:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 373
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->sendWelcomeEmail:Z

    .line 379
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    aput-object v3, v1, v2

    .line 373
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 382
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 421
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
