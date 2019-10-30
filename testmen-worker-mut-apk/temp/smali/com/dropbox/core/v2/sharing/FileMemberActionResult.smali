.class public Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
.super Ljava/lang/Object;
.source "FileMemberActionResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;
    }
.end annotation


# instance fields
.field protected final member:Lcom/dropbox/core/v2/sharing/MemberSelector;

.field protected final result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)V
    .locals 2
    .param p1, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;
    .param p2, "result"    # Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'member\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 46
    if-nez p2, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'result\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;

    .line 87
    .local v0, "other":Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    .line 88
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
    :cond_4
    move v1, v2

    .line 92
    goto :goto_0
.end method

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public getResult()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 72
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;->result:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
