.class Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;
.super Ljava/lang/Object;
.source "ListFolderMembersCursorArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;,
        Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
    }
.end annotation


# instance fields
.field protected final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final limit:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 64
    const/4 v0, 0x0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v2, v3}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;-><init>(Ljava/util/List;J)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 4
    .param p2, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 43
    .local v0, "x":Lcom/dropbox/core/v2/sharing/MemberAction;
    if-nez v0, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'actions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/MemberAction;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    .line 49
    const-wide/16 v2, 0x1

    cmp-long v1, p2, v2

    if-gez v1, :cond_2

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is smaller than 1L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_2
    const-wide/16 v2, 0x3e8

    cmp-long v1, p2, v2

    if-lez v1, :cond_3

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is larger than 1000L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_3
    iput-wide p2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->limit:J

    .line 56
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    if-ne p1, p0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v1

    .line 195
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 196
    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;

    .line 197
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->limit:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->limit:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;
    :cond_4
    move v1, v2

    .line 202
    goto :goto_0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 182
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->limit:J

    .line 184
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 182
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 186
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
