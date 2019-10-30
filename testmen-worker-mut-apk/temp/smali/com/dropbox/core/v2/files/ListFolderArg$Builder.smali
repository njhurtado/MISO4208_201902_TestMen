.class public Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
.super Ljava/lang/Object;
.source "ListFolderArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ListFolderArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected includeDeleted:Z

.field protected includeHasExplicitSharedMembers:Z

.field protected includeMediaInfo:Z

.field protected final path:Ljava/lang/String;

.field protected recursive:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    const-string v0, "(/(.|[\\r\\n])*)?|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->path:Ljava/lang/String;

    .line 166
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->recursive:Z

    .line 167
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMediaInfo:Z

    .line 168
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeDeleted:Z

    .line 169
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeHasExplicitSharedMembers:Z

    .line 170
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/ListFolderArg;
    .locals 6

    .prologue
    .line 269
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->path:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->recursive:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMediaInfo:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeDeleted:Z

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeHasExplicitSharedMembers:Z

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;ZZZZ)V

    return-object v0
.end method

.method public withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1
    .param p1, "includeDeleted"    # Ljava/lang/Boolean;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeDeleted:Z

    .line 236
    :goto_0
    return-object p0

    .line 234
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeDeleted:Z

    goto :goto_0
.end method

.method public withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1
    .param p1, "includeHasExplicitSharedMembers"    # Ljava/lang/Boolean;

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeHasExplicitSharedMembers:Z

    .line 259
    :goto_0
    return-object p0

    .line 257
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeHasExplicitSharedMembers:Z

    goto :goto_0
.end method

.method public withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1
    .param p1, "includeMediaInfo"    # Ljava/lang/Boolean;

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMediaInfo:Z

    .line 214
    :goto_0
    return-object p0

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->includeMediaInfo:Z

    goto :goto_0
.end method

.method public withRecursive(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1
    .param p1, "recursive"    # Ljava/lang/Boolean;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->recursive:Z

    .line 192
    :goto_0
    return-object p0

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;->recursive:Z

    goto :goto_0
.end method
