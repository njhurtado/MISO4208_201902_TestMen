.class public Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
.super Ljava/lang/Object;
.source "ListUsersOnFolderResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;
    }
.end annotation


# instance fields
.field protected final cursor:Lcom/dropbox/core/v2/paper/Cursor;

.field protected final hasMore:Z

.field protected final invitees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/InviteeInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/dropbox/core/v2/paper/Cursor;Z)V
    .locals 3
    .param p3, "cursor"    # Lcom/dropbox/core/v2/paper/Cursor;
    .param p4, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/InviteeInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/UserInfo;",
            ">;",
            "Lcom/dropbox/core/v2/paper/Cursor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/InviteeInfo;>;"
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/UserInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'invitees\' is null"

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

    check-cast v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .line 56
    .local v0, "x":Lcom/dropbox/core/v2/sharing/InviteeInfo;
    if-nez v0, :cond_1

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'invitees\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/InviteeInfo;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    .line 61
    if-nez p2, :cond_3

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'users\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UserInfo;

    .line 65
    .local v0, "x":Lcom/dropbox/core/v2/sharing/UserInfo;
    if-nez v0, :cond_4

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'users\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/UserInfo;
    :cond_5
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    .line 70
    if-nez p3, :cond_6

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'cursor\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_6
    iput-object p3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    .line 74
    iput-boolean p4, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->hasMore:Z

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    if-ne p1, p0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 139
    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    .line 140
    .local v0, "other":Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    .line 141
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    .line 142
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/Cursor;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->hasMore:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->hasMore:Z

    if-eq v3, v4, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    :cond_6
    move v1, v2

    .line 147
    goto :goto_0
.end method

.method public getCursor()Lcom/dropbox/core/v2/paper/Cursor;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->hasMore:Z

    return v0
.end method

.method public getInvitees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/InviteeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 123
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->hasMore:Z

    .line 127
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 123
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 129
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
