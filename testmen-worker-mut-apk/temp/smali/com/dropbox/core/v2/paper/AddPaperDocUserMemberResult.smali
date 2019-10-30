.class public Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;
.super Ljava/lang/Object;
.source "AddPaperDocUserMemberResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;
    }
.end annotation


# instance fields
.field protected final member:Lcom/dropbox/core/v2/sharing/MemberSelector;

.field protected final result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;)V
    .locals 2
    .param p1, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;
    .param p2, "result"    # Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'member\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 45
    if-nez p2, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'result\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ne p1, p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;

    .line 86
    .local v0, "other":Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 87
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;
    :cond_4
    move v1, v2

    .line 91
    goto :goto_0
.end method

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public getResult()Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 71
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;->result:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 75
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
