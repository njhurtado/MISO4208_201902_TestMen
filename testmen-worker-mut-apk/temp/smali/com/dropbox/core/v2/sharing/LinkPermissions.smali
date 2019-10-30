.class public Lcom/dropbox/core/v2/sharing/LinkPermissions;
.super Ljava/lang/Object;
.source "LinkPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;,
        Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;
    }
.end annotation


# instance fields
.field protected final canRevoke:Z

.field protected final requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

.field protected final resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

.field protected final revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "canRevoke"    # Z

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/dropbox/core/v2/sharing/LinkPermissions;-><init>(ZLcom/dropbox/core/v2/sharing/ResolvedVisibility;Lcom/dropbox/core/v2/sharing/RequestedVisibility;Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ZLcom/dropbox/core/v2/sharing/ResolvedVisibility;Lcom/dropbox/core/v2/sharing/RequestedVisibility;Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;)V
    .locals 0
    .param p1, "canRevoke"    # Z
    .param p2, "resolvedVisibility"    # Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    .param p3, "requestedVisibility"    # Lcom/dropbox/core/v2/sharing/RequestedVisibility;
    .param p4, "revokeFailureReason"    # Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .line 48
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    .line 49
    iput-boolean p1, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->canRevoke:Z

    .line 50
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .line 51
    return-void
.end method

.method public static newBuilder(Z)Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;
    .locals 1
    .param p0, "canRevoke"    # Z

    .prologue
    .line 117
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Builder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    if-ne p1, p0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 212
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 213
    check-cast v0, Lcom/dropbox/core/v2/sharing/LinkPermissions;

    .line 214
    .local v0, "other":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->canRevoke:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->canRevoke:Z

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .line 215
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    .line 216
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/RequestedVisibility;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .line 217
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/LinkPermissions;
    :cond_5
    move v1, v2

    .line 221
    goto :goto_0
.end method

.method public getCanRevoke()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->canRevoke:Z

    return v0
.end method

.method public getRequestedVisibility()Lcom/dropbox/core/v2/sharing/RequestedVisibility;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    return-object v0
.end method

.method public getResolvedVisibility()Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    return-object v0
.end method

.method public getRevokeFailureReason()Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 197
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->resolvedVisibility:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->canRevoke:Z

    .line 200
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPermissions;->revokeFailureReason:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    aput-object v3, v1, v2

    .line 197
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 203
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkPermissions$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
