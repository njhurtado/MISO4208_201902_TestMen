.class Lcom/dropbox/core/v2/team/MembersSetProfileArg;
.super Ljava/lang/Object;
.source "MembersSetProfileArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;,
        Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    }
.end annotation


# instance fields
.field protected final newEmail:Ljava/lang/String;

.field protected final newExternalId:Ljava/lang/String;

.field protected final newGivenName:Ljava/lang/String;

.field protected final newPersistentId:Ljava/lang/String;

.field protected final newSurname:Ljava/lang/String;

.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 7
    .param p1, "user"    # Lcom/dropbox/core/v2/team/UserSelectorArg;

    .prologue
    const/4 v2, 0x0

    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/MembersSetProfileArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Lcom/dropbox/core/v2/team/UserSelectorArg;
    .param p2, "newEmail"    # Ljava/lang/String;
    .param p3, "newExternalId"    # Ljava/lang/String;
    .param p4, "newGivenName"    # Ljava/lang/String;
    .param p5, "newSurname"    # Ljava/lang/String;
    .param p6, "newPersistentId"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'user\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 65
    if-eqz p2, :cond_2

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newEmail\' is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newEmail\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    .line 74
    if-eqz p3, :cond_3

    .line 75
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_3

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newExternalId\' is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    .line 80
    if-eqz p4, :cond_6

    .line 81
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newGivenName\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newGivenName\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_5
    const-string v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newGivenName\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_6
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    .line 92
    if-eqz p5, :cond_9

    .line 93
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_7

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newSurname\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_7
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_8

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newSurname\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_8
    const-string v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newSurname\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_9
    iput-object p5, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 1
    .param p0, "user"    # Lcom/dropbox/core/v2/team/UserSelectorArg;

    .prologue
    .line 191
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 359
    if-ne p1, p0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v1

    .line 363
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 364
    check-cast v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    .line 365
    .local v0, "other":Lcom/dropbox/core/v2/team/MembersSetProfileArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    .line 366
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    .line 369
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    .line 370
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/MembersSetProfileArg;
    :cond_8
    move v1, v2

    .line 374
    goto/16 :goto_0
.end method

.method public getNewEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getNewExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getNewGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewPersistentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSurname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 346
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 354
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
