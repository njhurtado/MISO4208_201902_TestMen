.class public Lcom/dropbox/core/v2/sharing/MembershipInfo;
.super Ljava/lang/Object;
.source "MembershipInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;,
        Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    }
.end annotation


# instance fields
.field protected final accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final initials:Ljava/lang/String;

.field protected final isInherited:Z

.field protected final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;)V
    .locals 2
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;

    .prologue
    const/4 v1, 0x0

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/dropbox/core/v2/sharing/MembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/util/List;Ljava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p3, "initials"    # Ljava/lang/String;
    .param p4, "isInherited"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'accessType\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 52
    if-eqz p2, :cond_2

    .line 53
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberPermission;

    .line 54
    .local v0, "x":Lcom/dropbox/core/v2/sharing/MemberPermission;
    if-nez v0, :cond_1

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'permissions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/MemberPermission;
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->permissions:Ljava/util/List;

    .line 60
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->initials:Ljava/lang/String;

    .line 61
    iput-boolean p4, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->isInherited:Z

    .line 62
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1
    .param p0, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;

    .prologue
    .line 129
    new-instance v0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    if-ne p1, p0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 237
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 238
    check-cast v0, Lcom/dropbox/core/v2/sharing/MembershipInfo;

    .line 239
    .local v0, "other":Lcom/dropbox/core/v2/sharing/MembershipInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->permissions:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->permissions:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->permissions:Ljava/util/List;

    .line 240
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->initials:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->initials:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->initials:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->initials:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->initials:Ljava/lang/String;

    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->isInherited:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->isInherited:Z

    if-eq v3, v4, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/MembershipInfo;
    :cond_6
    move v1, v2

    .line 246
    goto :goto_0
.end method

.method public getAccessType()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getInitials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->initials:Ljava/lang/String;

    return-object v0
.end method

.method public getIsInherited()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->isInherited:Z

    return v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 222
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->permissions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->initials:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo;->isInherited:Z

    .line 226
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 222
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 228
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    sget-object v0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
