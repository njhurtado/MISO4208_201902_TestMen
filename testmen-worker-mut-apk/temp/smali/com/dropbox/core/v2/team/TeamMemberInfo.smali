.class public Lcom/dropbox/core/v2/team/TeamMemberInfo;
.super Ljava/lang/Object;
.source "TeamMemberInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;
    }
.end annotation


# instance fields
.field protected final profile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

.field protected final role:Lcom/dropbox/core/v2/team/AdminTier;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/TeamMemberProfile;Lcom/dropbox/core/v2/team/AdminTier;)V
    .locals 2
    .param p1, "profile"    # Lcom/dropbox/core/v2/team/TeamMemberProfile;
    .param p2, "role"    # Lcom/dropbox/core/v2/team/AdminTier;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'profile\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->profile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    .line 42
    if-nez p2, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'role\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->role:Lcom/dropbox/core/v2/team/AdminTier;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p1, p0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/dropbox/core/v2/team/TeamMemberInfo;

    .line 83
    .local v0, "other":Lcom/dropbox/core/v2/team/TeamMemberInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->profile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->profile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->profile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->profile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamMemberProfile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->role:Lcom/dropbox/core/v2/team/AdminTier;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->role:Lcom/dropbox/core/v2/team/AdminTier;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->role:Lcom/dropbox/core/v2/team/AdminTier;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->role:Lcom/dropbox/core/v2/team/AdminTier;

    .line 84
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/AdminTier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/TeamMemberInfo;
    :cond_4
    move v1, v2

    .line 88
    goto :goto_0
.end method

.method public getProfile()Lcom/dropbox/core/v2/team/TeamMemberProfile;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->profile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    return-object v0
.end method

.method public getRole()Lcom/dropbox/core/v2/team/AdminTier;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->role:Lcom/dropbox/core/v2/team/AdminTier;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 68
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->profile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberInfo;->role:Lcom/dropbox/core/v2/team/AdminTier;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 72
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
