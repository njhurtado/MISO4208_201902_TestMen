.class public Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
.super Ljava/lang/Object;
.source "MemberAccessLevelResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;,
        Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;
    }
.end annotation


# instance fields
.field protected final accessDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final warning:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0, v0, v0}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "accessLevel"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "warning"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "accessDetails":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 50
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    .line 51
    if-eqz p3, :cond_1

    .line 52
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;

    .line 53
    .local v0, "x":Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;
    if-nez v0, :cond_0

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'accessDetails\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    .line 59
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    if-ne p1, p0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 205
    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .line 206
    .local v0, "other":Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    .line 208
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    :cond_5
    move v1, v2

    .line 212
    goto :goto_0
.end method

.method public getAccessDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    return-object v0
.end method

.method public getAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getWarning()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 190
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 195
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
