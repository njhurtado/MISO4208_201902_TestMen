.class Lcom/dropbox/core/v2/sharing/ListFoldersArgs;
.super Ljava/lang/Object;
.source "ListFoldersArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;,
        Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;
    }
.end annotation


# instance fields
.field protected final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final limit:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 64
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;-><init>(JLjava/util/List;)V

    .line 65
    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 5
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v2, 0x1

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is smaller than 1L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    const-wide/16 v2, 0x3e8

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is larger than 1000L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_1
    iput-wide p1, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->limit:J

    .line 48
    if-eqz p3, :cond_3

    .line 49
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 50
    .local v0, "x":Lcom/dropbox/core/v2/sharing/FolderAction;
    if-nez v0, :cond_2

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'actions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    if-ne p1, p0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 194
    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;

    .line 195
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ListFoldersArgs;
    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->limit:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->limit:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    .line 196
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/ListFoldersArgs;
    :cond_3
    move v1, v2

    .line 200
    goto :goto_0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 180
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->limit:J

    .line 181
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    aput-object v3, v1, v2

    .line 180
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 184
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
