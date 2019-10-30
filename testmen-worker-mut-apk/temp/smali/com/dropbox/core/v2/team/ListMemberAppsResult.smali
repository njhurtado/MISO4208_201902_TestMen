.class public Lcom/dropbox/core/v2/team/ListMemberAppsResult;
.super Ljava/lang/Object;
.source "ListMemberAppsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/ListMemberAppsResult$Serializer;
    }
.end annotation


# instance fields
.field protected final linkedApiApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ApiApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ApiApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "linkedApiApps":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/ApiApp;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'linkedApiApps\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ApiApp;

    .line 38
    .local v0, "x":Lcom/dropbox/core/v2/team/ApiApp;
    if-nez v0, :cond_1

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'linkedApiApps\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    .end local v0    # "x":Lcom/dropbox/core/v2/team/ApiApp;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMemberAppsResult;->linkedApiApps:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/dropbox/core/v2/team/ListMemberAppsResult;

    .line 70
    .local v0, "other":Lcom/dropbox/core/v2/team/ListMemberAppsResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMemberAppsResult;->linkedApiApps:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/ListMemberAppsResult;->linkedApiApps:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMemberAppsResult;->linkedApiApps:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/ListMemberAppsResult;->linkedApiApps:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getLinkedApiApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ApiApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ListMemberAppsResult;->linkedApiApps:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 56
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMemberAppsResult;->linkedApiApps:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 59
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/dropbox/core/v2/team/ListMemberAppsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberAppsResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMemberAppsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/dropbox/core/v2/team/ListMemberAppsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberAppsResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMemberAppsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
