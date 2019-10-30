.class public Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
.super Ljava/lang/Object;
.source "SharedContentLinkMetadataBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;
    }
.end annotation


# instance fields
.field protected final audienceOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;"
        }
    .end annotation
.end field

.field protected final currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

.field protected final expiry:Ljava/util/Date;

.field protected final linkPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;"
        }
    .end annotation
.end field

.field protected final passwordProtected:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)V
    .locals 6
    .param p2, "currentAudience"    # Lcom/dropbox/core/v2/sharing/LinkAudience;
    .param p4, "passwordProtected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    .local p3, "linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/util/Date;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLjava/util/Date;)V
    .locals 3
    .param p2, "currentAudience"    # Lcom/dropbox/core/v2/sharing/LinkAudience;
    .param p4, "passwordProtected"    # Z
    .param p5, "expiry"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "audienceOptions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkAudience;>;"
    .local p3, "linkPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/LinkPermission;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'audienceOptions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 56
    .local v0, "x":Lcom/dropbox/core/v2/sharing/LinkAudience;
    if-nez v0, :cond_1

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'audienceOptions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/LinkAudience;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    .line 61
    if-nez p2, :cond_3

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'currentAudience\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 65
    invoke-static {p5}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    .line 66
    if-nez p3, :cond_4

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'linkPermissions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/LinkPermission;

    .line 70
    .local v0, "x":Lcom/dropbox/core/v2/sharing/LinkPermission;
    if-nez v0, :cond_5

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'linkPermissions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/LinkPermission;
    :cond_6
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    .line 75
    iput-boolean p4, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    .line 76
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    if-ne p1, p0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 171
    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;

    .line 172
    .local v0, "other":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 173
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/LinkAudience;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    .line 174
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    .line 176
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
    :cond_6
    move v1, v2

    .line 180
    goto :goto_0
.end method

.method public getAudienceOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentAudience()Lcom/dropbox/core/v2/sharing/LinkAudience;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    return-object v0
.end method

.method public getExpiry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    return-object v0
.end method

.method public getLinkPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getPasswordProtected()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 154
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->audienceOptions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->expiry:Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->linkPermissions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;->passwordProtected:Z

    .line 159
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 154
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 161
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
