.class public Lcom/dropbox/core/v2/users/Account;
.super Ljava/lang/Object;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/Account$Serializer;
    }
.end annotation


# instance fields
.field protected final accountId:Ljava/lang/String;

.field protected final disabled:Z

.field protected final email:Ljava/lang/String;

.field protected final emailVerified:Z

.field protected final name:Lcom/dropbox/core/v2/users/Name;

.field protected final profilePhotoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "name"    # Lcom/dropbox/core/v2/users/Name;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "emailVerified"    # Z
    .param p5, "disabled"    # Z

    .prologue
    .line 95
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/users/Account;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 2
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "name"    # Lcom/dropbox/core/v2/users/Name;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "emailVerified"    # Z
    .param p5, "disabled"    # Z
    .param p6, "profilePhotoUrl"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x28

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'accountId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'accountId\' is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'accountId\' is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/users/Account;->accountId:Ljava/lang/String;

    .line 62
    if-nez p2, :cond_3

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/users/Account;->name:Lcom/dropbox/core/v2/users/Name;

    .line 66
    if-nez p3, :cond_4

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'email\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_4
    iput-object p3, p0, Lcom/dropbox/core/v2/users/Account;->email:Ljava/lang/String;

    .line 70
    iput-boolean p4, p0, Lcom/dropbox/core/v2/users/Account;->emailVerified:Z

    .line 71
    iput-object p6, p0, Lcom/dropbox/core/v2/users/Account;->profilePhotoUrl:Ljava/lang/String;

    .line 72
    iput-boolean p5, p0, Lcom/dropbox/core/v2/users/Account;->disabled:Z

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    if-ne p1, p0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 174
    check-cast v0, Lcom/dropbox/core/v2/users/Account;

    .line 175
    .local v0, "other":Lcom/dropbox/core/v2/users/Account;
    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->accountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/Account;->accountId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->accountId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/Account;->accountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/Account;->name:Lcom/dropbox/core/v2/users/Name;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/Account;->name:Lcom/dropbox/core/v2/users/Name;

    .line 176
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/Account;->email:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/Account;->email:Ljava/lang/String;

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/dropbox/core/v2/users/Account;->emailVerified:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/users/Account;->emailVerified:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/dropbox/core/v2/users/Account;->disabled:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/users/Account;->disabled:Z

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->profilePhotoUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/Account;->profilePhotoUrl:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->profilePhotoUrl:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->profilePhotoUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/Account;->profilePhotoUrl:Ljava/lang/String;

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/users/Account;
    :cond_6
    move v1, v2

    .line 184
    goto :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/users/Account;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/Account;->disabled:Z

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/users/Account;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/Account;->emailVerified:Z

    return v0
.end method

.method public getName()Lcom/dropbox/core/v2/users/Name;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/users/Account;->name:Lcom/dropbox/core/v2/users/Name;

    return-object v0
.end method

.method public getProfilePhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/users/Account;->profilePhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 156
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->accountId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->name:Lcom/dropbox/core/v2/users/Name;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->email:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/users/Account;->emailVerified:Z

    .line 160
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/users/Account;->profilePhotoUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/dropbox/core/v2/users/Account;->disabled:Z

    .line 162
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 156
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 164
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/dropbox/core/v2/users/Account$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Account$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/Account$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/dropbox/core/v2/users/Account$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Account$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/Account$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
