.class public Lcom/dropbox/core/v2/sharing/MemberPermission;
.super Ljava/lang/Object;
.source "MemberPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;
    }
.end annotation


# instance fields
.field protected final action:Lcom/dropbox/core/v2/sharing/MemberAction;

.field protected final allow:Z

.field protected final reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberAction;Z)V
    .locals 1
    .param p1, "action"    # Lcom/dropbox/core/v2/sharing/MemberAction;
    .param p2, "allow"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/MemberPermission;-><init>(Lcom/dropbox/core/v2/sharing/MemberAction;ZLcom/dropbox/core/v2/sharing/PermissionDeniedReason;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberAction;ZLcom/dropbox/core/v2/sharing/PermissionDeniedReason;)V
    .locals 2
    .param p1, "action"    # Lcom/dropbox/core/v2/sharing/MemberAction;
    .param p2, "allow"    # Z
    .param p3, "reason"    # Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'action\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->action:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 45
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->allow:Z

    .line 46
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p1, p0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 110
    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberPermission;

    .line 111
    .local v0, "other":Lcom/dropbox/core/v2/sharing/MemberPermission;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->action:Lcom/dropbox/core/v2/sharing/MemberAction;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberPermission;->action:Lcom/dropbox/core/v2/sharing/MemberAction;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->action:Lcom/dropbox/core/v2/sharing/MemberAction;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberPermission;->action:Lcom/dropbox/core/v2/sharing/MemberAction;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberAction;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->allow:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/MemberPermission;->allow:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 113
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/MemberPermission;
    :cond_4
    move v1, v2

    .line 117
    goto :goto_0
.end method

.method public getAction()Lcom/dropbox/core/v2/sharing/MemberAction;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->action:Lcom/dropbox/core/v2/sharing/MemberAction;

    return-object v0
.end method

.method public getAllow()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->allow:Z

    return v0
.end method

.method public getReason()Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 95
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->action:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->allow:Z

    .line 97
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    aput-object v3, v1, v2

    .line 95
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 100
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
