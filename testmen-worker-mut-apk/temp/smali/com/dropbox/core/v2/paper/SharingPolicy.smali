.class public Lcom/dropbox/core/v2/paper/SharingPolicy;
.super Ljava/lang/Object;
.source "SharingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;,
        Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;
    }
.end annotation


# instance fields
.field protected final publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

.field protected final teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/paper/SharingPolicy;-><init>(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;)V
    .locals 0
    .param p1, "publicSharingPolicy"    # Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    .param p2, "teamSharingPolicy"    # Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .line 39
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    .line 40
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    if-ne p1, p0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 145
    check-cast v0, Lcom/dropbox/core/v2/paper/SharingPolicy;

    .line 146
    .local v0, "other":Lcom/dropbox/core/v2/paper/SharingPolicy;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    .line 147
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/SharingPolicy;
    :cond_4
    move v1, v2

    .line 151
    goto :goto_0
.end method

.method public getPublicSharingPolicy()Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    return-object v0
.end method

.method public getTeamSharingPolicy()Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 131
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 135
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
